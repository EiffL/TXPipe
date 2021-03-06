#!/usr/bin/env cwl-runner

arguments:
- position: -1
  valueFrom: -mtxpipe
- position: 0
  valueFrom: TXRandomPhotozPDF
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
doc: "\n    This is a placeholder for an actual photoz pipeline!\n\n    At the moment\
  \ it just randomly generates a log-normal PDF for each object.\n\n    The pipeline\
  \ loops through input photometry data,\n    \"calculating\" (at random!) a PDF and\
  \ a point-estimate for each row.\n    It must generate the point estimates for the\
  \ five different \n    metacal variants (which each have different shears applied).\
  \ \n\n    It can do this in parallel if needed.\n\n    We might want to move some\
  \ of the functionality here (e.g. the I/O)\n    into a general parent class.\n\n\
  \    "
id: TXRandomPhotozPDF
inputs:
- doc: Some documentation about this parameter
  id: zmax
  inputBinding:
    prefix: --zmax=
    separate: false
  label: zmax
  type: float
- doc: Some documentation about this parameter
  id: nz
  inputBinding:
    prefix: --nz=
    separate: false
  label: nz
  type: int
- default: 10000
  doc: Some documentation about this parameter
  id: chunk_rows
  inputBinding:
    prefix: --chunk_rows=
    separate: false
  label: chunk_rows
  type: int
- default: ugriz
  doc: Some documentation about this parameter
  id: bands
  inputBinding:
    prefix: --bands=
    separate: false
  label: bands
  type: string
- doc: Some documentation about the input
  format: http://edamontology.org/format_3590
  id: photometry_catalog
  inputBinding:
    prefix: --photometry_catalog
  label: photometry_catalog
  type: File
- doc: Configuration file
  format: http://edamontology.org/format_3750
  id: config
  inputBinding:
    prefix: --config
  label: config
  type: File
label: TXRandomPhotozPDF
outputs:
- doc: Some results produced by the pipeline element
  format: http://edamontology.org/format_3590
  id: photoz_pdfs
  label: photoz_pdfs
  outputBinding:
    glob: photoz_pdfs.hdf5
  type: File
