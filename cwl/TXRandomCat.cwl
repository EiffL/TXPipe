#!/usr/bin/env cwl-runner

arguments:
- position: -1
  valueFrom: -mtxpipe
- position: 0
  valueFrom: TXRandomCat
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: TXRandomCat
inputs:
- default: 100.0
  doc: Some documentation about this parameter
  id: density
  inputBinding:
    prefix: --density=
    separate: false
  label: density
  type: float
- default: 23.0
  doc: Some documentation about this parameter
  id: Mstar
  inputBinding:
    prefix: --Mstar=
    separate: false
  label: Mstar
  type: float
- default: -1.25
  doc: Some documentation about this parameter
  id: alpha
  inputBinding:
    prefix: --alpha=
    separate: false
  label: alpha
  type: float
- default: 0.27
  doc: Some documentation about this parameter
  id: sigma_e
  inputBinding:
    prefix: --sigma_e=
    separate: false
  label: sigma_e
  type: float
- doc: Some documentation about the input
  format: http://edamontology.org/format_3590
  id: diagnostic_maps
  inputBinding:
    prefix: --diagnostic_maps
  label: diagnostic_maps
  type: File
- doc: Some documentation about the input
  format: http://edamontology.org/format_3590
  id: tomography_catalog
  inputBinding:
    prefix: --tomography_catalog
  label: tomography_catalog
  type: File
- doc: Some documentation about the input
  format: http://edamontology.org/format_3590
  id: photoz_stack
  inputBinding:
    prefix: --photoz_stack
  label: photoz_stack
  type: File
- doc: Configuration file
  format: http://edamontology.org/format_3750
  id: config
  inputBinding:
    prefix: --config
  label: config
  type: File
label: TXRandomCat
outputs:
- doc: Some results produced by the pipeline element
  format: http://edamontology.org/format_3590
  id: random_cats
  label: random_cats
  outputBinding:
    glob: random_cats.hdf5
  type: File
