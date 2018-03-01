"""
This is a placeholder for an actual photoz pipeline!

At the moment it just randomly generates a log-normal PDF for each object.
Hopefully the real pipeline will be more accurate than that.

"""
from pipette import PipelineStage
from pipette.types import YamlFile
from descTX.dtypes import *


class TXPhotozPDF(PipelineStage):
    name='TXPhotozPDF'
    inputs = [
        ('shear_catalog', ShearCatFile),
        ('config', YamlFile),
    ]
    outputs = [
        ('photoz_pdfs', PhotozPDFFile),
    ]

    # Configuration options.  If the value is not "None" then it specifies a default value
    config_options = {'zmax': None, 'nz': None, 'chunk_rows': 10000}
    def run(self):
        import numpy as np
        import fitsio

        config = self.read_config()
        z = np.linspace(0.0, config['zmax'], config['nz'])
        
        # Open the input catalog and check how many objects
        # we will be running on.
        cat = self.get_input('shear_catalog')
        nobj = fitsio.read_header(cat, ext=1)['NAXIS2']

        # Prepare the output HDF5 file
        output_file = self.prepare_output(nobj, config, z)

        # The columns we need to calculate the photo-z.
        # Note that we need all the metacalibrated variants too.
        cols = ['mcal_pars', 'mcal_pars_1m', 'mcal_pars_1p', 'mcal_pars_2m', 'mcal_pars_2p']

        # Loop through chunks of the data. runn
        # Parallelism is handled in the iterate_input function
        hdu = 1
        chunk_rows = config['chunk_rows']
        for start, end, data in self.iterate_fits('shear_catalog', hdu, cols, chunk_rows):
            print(f"Process {self.rank} running photo-z for rows {start}-{end}")
            pdfs, point_estimates = self.calculate_photozs(data, z, config)
            self.write_output(output_file, start, end, pdfs, point_estimates)

        # Synchronize processors
        if self.is_mpi():
            self.comm.Barrier()

        # Finish
        output_file.close()

    def calculate_photozs(self, data, z, config):
        # Mock photo-z code generating random PDFs.
        import numpy as np
        import scipy.stats
        nz = config['nz']
        nobj = len(data)
        medians = np.random.uniform(0.2, 1.0, size=nobj)
        sigmas = 0.05 * (1+medians)
        pdfs = np.empty((nobj,nz), dtype='f4')
        point_estimates = np.empty((5,nobj), dtype='f4')
        for i,(mu,sigma) in enumerate(zip(medians,sigmas)):
            pdf = scipy.stats.lognorm.pdf(z, s=sigma, scale=mu)
            pdfs[i] = pdf
            point_estimates[:,i] = mu
        return pdfs, point_estimates

    def write_output(self, output_file, start, end, pdfs, point_estimates):
        group = output_file['pdf']
        group['pdf'][start:end] = pdfs
        group['mu'][start:end] = point_estimates[0]
        group['mu_1p'][start:end] = point_estimates[1]
        group['mu_1m'][start:end] = point_estimates[2]
        group['mu_2p'][start:end] = point_estimates[3]
        group['mu_2m'][start:end] = point_estimates[4]





    def prepare_output(self, nobj, config, z):
        # Open the output file.
        # This will automatically open using the HDF5 mpi-io driver 
        # if we are running under MPI and the output type is parallel
        f = self.open_output('photoz_pdfs', parallel=True)
            

        nz = config['nz']
        group = f.create_group('pdf')
        group.create_dataset("z", (nz,), dtype='f4')
        group.create_dataset("pdf", (nobj,nz), dtype='f4')
        group.create_dataset("mu", (nobj,), dtype='f4')
        group.create_dataset("mu_1p", (nobj,), dtype='f4')
        group.create_dataset("mu_1m", (nobj,), dtype='f4')
        group.create_dataset("mu_2p", (nobj,), dtype='f4')
        group.create_dataset("mu_2m", (nobj,), dtype='f4')
        group['z'][:] = z
        return f


if __name__ == '__main__':
    PipelineStage.main()