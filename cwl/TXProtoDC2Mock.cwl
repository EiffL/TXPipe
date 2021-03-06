#!/usr/bin/env cwl-runner

arguments:
- position: -1
  valueFrom: -mtxpipe
- position: 0
  valueFrom: TXProtoDC2Mock
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
doc: "\n    This stage simulates metacal data and metacalibrated\n    photometry measurements,\
  \ starting from a cosmology catalogs\n    of the kind used as an input to DC2 image\
  \ and obs-catalog simulations.\n\n    This is mainly useful for testing infrastructure\
  \ in advance\n    of the DC2 catalogs being available, but might also be handy\n\
  \    for starting from a purer simulation.\n    "
id: TXProtoDC2Mock
inputs:
- default: protoDC2_test
  doc: Some documentation about this parameter
  id: cat_name
  inputBinding:
    prefix: --cat_name=
    separate: false
  label: cat_name
  type: string
- default: 165
  doc: Some documentation about this parameter
  id: visits_per_band
  inputBinding:
    prefix: --visits_per_band=
    separate: false
  label: visits_per_band
  type: int
- default: 4.0
  doc: Some documentation about this parameter
  id: snr_limit
  inputBinding:
    prefix: --snr_limit=
    separate: false
  label: snr_limit
  type: float
- default: 99999999999999
  doc: Some documentation about this parameter
  id: max_size
  inputBinding:
    prefix: --max_size=
    separate: false
  label: max_size
  type: int
- default: ''
  doc: Some documentation about this parameter
  id: extra_cols
  inputBinding:
    prefix: --extra_cols=
    separate: false
  label: extra_cols
  type: string
- default: 99999999999999
  doc: Some documentation about this parameter
  id: max_npix
  inputBinding:
    prefix: --max_npix=
    separate: false
  label: max_npix
  type: int
- doc: Some documentation about the input
  format: http://edamontology.org/format_3590
  id: response_model
  inputBinding:
    prefix: --response_model
  label: response_model
  type: File
- doc: Configuration file
  format: http://edamontology.org/format_3750
  id: config
  inputBinding:
    prefix: --config
  label: config
  type: File
label: TXProtoDC2Mock
outputs:
- doc: Some results produced by the pipeline element
  format: http://edamontology.org/format_3590
  id: shear_catalog
  label: shear_catalog
  outputBinding:
    glob: shear_catalog.hdf5
  type: File
- doc: Some results produced by the pipeline element
  format: http://edamontology.org/format_3590
  id: photometry_catalog
  label: photometry_catalog
  outputBinding:
    glob: photometry_catalog.hdf5
  type: File
