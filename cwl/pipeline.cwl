#!/usr/bin/env cwl-runner

class: Workflow
cwlVersion: v1.0
inputs:
  Mstar@TXRandomCat:
    default: 23.0
    id: Mstar@TXRandomCat
    label: Mstar
    type: float
  T_cut@TXSelector:
    id: T_cut@TXSelector
    label: T_cut
    type: float
  alpha@TXRandomCat:
    default: -1.25
    id: alpha@TXRandomCat
    label: alpha
    type: float
  band@TXBrighterFatterPlot:
    default: r
    id: band@TXBrighterFatterPlot
    label: band
    type: string
  bands@PZPDFMLZ:
    default: ugrizy
    id: bands@PZPDFMLZ
    label: bands
    type: string
  bands@TXSelector:
    default: riz
    id: bands@TXSelector
    label: bands
    type: string
  bin_slop@TXGammaTBrightStars:
    default: 0.1
    id: bin_slop@TXGammaTBrightStars
    label: bin_slop
    type: float
  bin_slop@TXGammaTDimStars:
    default: 0.1
    id: bin_slop@TXGammaTDimStars
    label: bin_slop
    type: float
  bin_slop@TXRoweStatistics:
    default: 0.01
    id: bin_slop@TXRoweStatistics
    label: bin_slop
    type: float
  bin_slop@TXTwoPoint:
    default: 0.1
    id: bin_slop@TXTwoPoint
    label: bin_slop
    type: float
  calcs@TXGammaTBrightStars:
    default:
    - 0
    - 1
    - 2
    id: calcs@TXGammaTBrightStars
    label: calcs
    type:
      items: int
      type: array
  calcs@TXGammaTDimStars:
    default:
    - 0
    - 1
    - 2
    id: calcs@TXGammaTDimStars
    label: calcs
    type:
      items: int
      type: array
  calcs@TXTwoPoint:
    default:
    - 0
    - 1
    - 2
    id: calcs@TXTwoPoint
    label: calcs
    type:
      items: int
      type: array
  calibration_table:
    format: http://edamontology.org/format_2330
    id: calibration_table
    label: calibration_table
    type: File
  chunk_rows@PZPDFMLZ:
    default: 10000
    id: chunk_rows@PZPDFMLZ
    label: chunk_rows
    type: int
  chunk_rows@TXDiagnosticMaps:
    default: 100000
    id: chunk_rows@TXDiagnosticMaps
    label: chunk_rows
    type: int
  chunk_rows@TXDiagnosticPlots:
    default: 100000
    id: chunk_rows@TXDiagnosticPlots
    label: chunk_rows
    type: int
  chunk_rows@TXPhotozStack:
    default: 5000
    id: chunk_rows@TXPhotozStack
    label: chunk_rows
    type: int
  chunk_rows@TXSelector:
    default: 10000
    id: chunk_rows@TXSelector
    label: chunk_rows
    type: int
  config:
    format: http://edamontology.org/format_3750
    id: config
    label: config
    type: File
  cores_per_task@TXGammaTBrightStars:
    default: 20
    id: cores_per_task@TXGammaTBrightStars
    label: cores_per_task
    type: int
  cores_per_task@TXGammaTDimStars:
    default: 20
    id: cores_per_task@TXGammaTDimStars
    label: cores_per_task
    type: int
  cores_per_task@TXTwoPoint:
    default: 20
    id: cores_per_task@TXTwoPoint
    label: cores_per_task
    type: int
  cperp_cut@TXSelector:
    default: 0.2
    id: cperp_cut@TXSelector
    label: cperp_cut
    type: float
  dec_cent@TXDiagnosticMaps:
    default: .nan
    id: dec_cent@TXDiagnosticMaps
    label: dec_cent
    type: float
  delta_gamma@TXDiagnosticPlots:
    default: 0.02
    id: delta_gamma@TXDiagnosticPlots
    label: delta_gamma
    type: float
  delta_gamma@TXSelector:
    id: delta_gamma@TXSelector
    label: delta_gamma
    type: float
  density@TXRandomCat:
    default: 100.0
    id: density@TXRandomCat
    label: density
    type: float
  depth_band@TXDiagnosticMaps:
    default: i
    id: depth_band@TXDiagnosticMaps
    label: depth_band
    type: string
  do_pos_pos@TXTwoPoint:
    default: true
    id: do_pos_pos@TXTwoPoint
    label: do_pos_pos
    type: boolean
  do_shear_pos@TXTwoPoint:
    default: true
    id: do_shear_pos@TXTwoPoint
    label: do_shear_pos
    type: boolean
  do_shear_shear@TXTwoPoint:
    default: true
    id: do_shear_shear@TXTwoPoint
    label: do_shear_shear
    type: boolean
  flag_exponent_max@TXDiagnosticMaps:
    default: 8
    id: flag_exponent_max@TXDiagnosticMaps
    label: flag_exponent_max
    type: int
  flip_g2@TXGammaTBrightStars:
    default: true
    id: flip_g2@TXGammaTBrightStars
    label: flip_g2
    type: boolean
  flip_g2@TXGammaTDimStars:
    default: true
    id: flip_g2@TXGammaTDimStars
    label: flip_g2
    type: boolean
  flip_g2@TXTwoPoint:
    default: true
    id: flip_g2@TXTwoPoint
    label: flip_g2
    type: boolean
  i_hi_cut@TXSelector:
    default: 19.9
    id: i_hi_cut@TXSelector
    label: i_hi_cut
    type: float
  i_lo_cut@TXSelector:
    default: 17.5
    id: i_lo_cut@TXSelector
    label: i_lo_cut
    type: float
  input_pz@TXSelector:
    default: false
    id: input_pz@TXSelector
    label: input_pz
    type: boolean
  lens_bins@TXTwoPoint:
    default:
    - -1
    id: lens_bins@TXTwoPoint
    label: lens_bins
    type:
      items: int
      type: array
  max_sep@TXGammaTBrightStars:
    default: 100
    id: max_sep@TXGammaTBrightStars
    label: max_sep
    type: int
  max_sep@TXGammaTDimStars:
    default: 100
    id: max_sep@TXGammaTDimStars
    label: max_sep
    type: int
  max_sep@TXRoweStatistics:
    default: 250.0
    id: max_sep@TXRoweStatistics
    label: max_sep
    type: float
  max_sep@TXTwoPoint:
    default: 250
    id: max_sep@TXTwoPoint
    label: max_sep
    type: int
  min_sep@TXGammaTBrightStars:
    default: 2.5
    id: min_sep@TXGammaTBrightStars
    label: min_sep
    type: float
  min_sep@TXGammaTDimStars:
    default: 2.5
    id: min_sep@TXGammaTDimStars
    label: min_sep
    type: float
  min_sep@TXRoweStatistics:
    default: 0.5
    id: min_sep@TXRoweStatistics
    label: min_sep
    type: float
  min_sep@TXTwoPoint:
    default: 2.5
    id: min_sep@TXTwoPoint
    label: min_sep
    type: float
  mmax@TXBrighterFatterPlot:
    default: 23.5
    id: mmax@TXBrighterFatterPlot
    label: mmax
    type: float
  mmin@TXBrighterFatterPlot:
    default: 18.5
    id: mmin@TXBrighterFatterPlot
    label: mmin
    type: float
  nbin@TXBrighterFatterPlot:
    default: 20
    id: nbin@TXBrighterFatterPlot
    label: nbin
    type: int
  nbins@TXGammaTBrightStars:
    default: 20
    id: nbins@TXGammaTBrightStars
    label: nbins
    type: int
  nbins@TXGammaTDimStars:
    default: 20
    id: nbins@TXGammaTDimStars
    label: nbins
    type: int
  nbins@TXRoweStatistics:
    default: 20
    id: nbins@TXRoweStatistics
    label: nbins
    type: int
  nbins@TXTwoPoint:
    default: 20
    id: nbins@TXTwoPoint
    label: nbins
    type: int
  npix_x@TXDiagnosticMaps:
    default: -1
    id: npix_x@TXDiagnosticMaps
    label: npix_x
    type: int
  npix_y@TXDiagnosticMaps:
    default: -1
    id: npix_y@TXDiagnosticMaps
    label: npix_y
    type: int
  nside@TXDiagnosticMaps:
    default: 0
    id: nside@TXDiagnosticMaps
    label: nside
    type: int
  nz@PZPDFMLZ:
    id: nz@PZPDFMLZ
    label: nz
    type: int
  photometry_catalog:
    format: http://edamontology.org/format_3590
    id: photometry_catalog
    label: photometry_catalog
    type: File
  photoz_trained_model:
    format: http://edamontology.org/format_1915
    id: photoz_trained_model
    label: photoz_trained_model
    type: File
  pixel_size@TXDiagnosticMaps:
    default: .nan
    id: pixel_size@TXDiagnosticMaps
    label: pixel_size
    type: float
  pixelization@TXDiagnosticMaps:
    default: healpix
    id: pixelization@TXDiagnosticMaps
    label: pixelization
    type: string
  psf_size_units@TXRoweStatistics:
    default: sigma
    id: psf_size_units@TXRoweStatistics
    label: psf_size_units
    type: string
  r_cpar_cut@TXSelector:
    default: 13.5
    id: r_cpar_cut@TXSelector
    label: r_cpar_cut
    type: float
  r_hi_cut@TXSelector:
    default: 19.6
    id: r_hi_cut@TXSelector
    label: r_hi_cut
    type: float
  r_i_cut@TXSelector:
    default: 2.0
    id: r_i_cut@TXSelector
    label: r_i_cut
    type: float
  r_lo_cut@TXSelector:
    default: 16.0
    id: r_lo_cut@TXSelector
    label: r_lo_cut
    type: float
  ra_cent@TXDiagnosticMaps:
    default: .nan
    id: ra_cent@TXDiagnosticMaps
    label: ra_cent
    type: float
  random_seed@TXSelector:
    default: 42
    id: random_seed@TXSelector
    label: random_seed
    type: int
  reduce_randoms_size@TXGammaTBrightStars:
    default: 1.0
    id: reduce_randoms_size@TXGammaTBrightStars
    label: reduce_randoms_size
    type: float
  reduce_randoms_size@TXGammaTDimStars:
    default: 1.0
    id: reduce_randoms_size@TXGammaTDimStars
    label: reduce_randoms_size
    type: float
  reduce_randoms_size@TXTwoPoint:
    default: 1.0
    id: reduce_randoms_size@TXTwoPoint
    label: reduce_randoms_size
    type: float
  s2n_cut@TXSelector:
    id: s2n_cut@TXSelector
    label: s2n_cut
    type: float
  sep_units@TXGammaTBrightStars:
    default: arcmin
    id: sep_units@TXGammaTBrightStars
    label: sep_units
    type: string
  sep_units@TXGammaTDimStars:
    default: arcmin
    id: sep_units@TXGammaTDimStars
    label: sep_units
    type: string
  sep_units@TXRoweStatistics:
    default: arcmin
    id: sep_units@TXRoweStatistics
    label: sep_units
    type: string
  sep_units@TXTwoPoint:
    default: arcmin
    id: sep_units@TXTwoPoint
    label: sep_units
    type: string
  shear_catalog:
    format: http://edamontology.org/format_3590
    id: shear_catalog
    label: shear_catalog
    type: File
  sigma_e@TXRandomCat:
    default: 0.27
    id: sigma_e@TXRandomCat
    label: sigma_e
    type: float
  snr_delta@TXDiagnosticMaps:
    default: 1.0
    id: snr_delta@TXDiagnosticMaps
    label: snr_delta
    type: float
  snr_threshold@TXDiagnosticMaps:
    id: snr_threshold@TXDiagnosticMaps
    label: snr_threshold
    type: float
  source_bins@TXTwoPoint:
    default:
    - -1
    id: source_bins@TXTwoPoint
    label: source_bins
    type:
      items: int
      type: array
  sparse@TXDiagnosticMaps:
    default: true
    id: sparse@TXDiagnosticMaps
    label: sparse
    type: boolean
  star_catalog:
    format: http://edamontology.org/format_3590
    id: star_catalog
    label: star_catalog
    type: File
  true_shear@TXDiagnosticMaps:
    default: false
    id: true_shear@TXDiagnosticMaps
    label: true_shear
    type: boolean
  verbose@TXGammaTBrightStars:
    default: 1
    id: verbose@TXGammaTBrightStars
    label: verbose
    type: int
  verbose@TXGammaTDimStars:
    default: 1
    id: verbose@TXGammaTDimStars
    label: verbose
    type: int
  verbose@TXSelector:
    default: false
    id: verbose@TXSelector
    label: verbose
    type: boolean
  verbose@TXTwoPoint:
    default: 1
    id: verbose@TXTwoPoint
    label: verbose
    type: int
  zbin_edges@TXSelector:
    id: zbin_edges@TXSelector
    label: zbin_edges
    type:
      items: float
      type: array
  zmax@PZPDFMLZ:
    id: zmax@PZPDFMLZ
    label: zmax
    type: float
outputs:
  T_psf_residual_hist:
    format: PNGFile
    id: T_psf_residual_hist
    label: T_psf_residual_hist
    outputSource: TXPSFDiagnostics/T_psf_residual_hist
    type: File
  e1_psf_residual_hist:
    format: PNGFile
    id: e1_psf_residual_hist
    label: e1_psf_residual_hist
    outputSource: TXPSFDiagnostics/e1_psf_residual_hist
    type: File
  e2_psf_residual_hist:
    format: PNGFile
    id: e2_psf_residual_hist
    label: e2_psf_residual_hist
    outputSource: TXPSFDiagnostics/e2_psf_residual_hist
    type: File
steps:
  PZPDFMLZ:
    in:
      bands:
        id: bands
        source: bands@PZPDFMLZ
      chunk_rows:
        id: chunk_rows
        source: chunk_rows@PZPDFMLZ
      config:
        id: config
        source: config
      nz:
        id: nz
        source: nz@PZPDFMLZ
      photometry_catalog:
        id: photometry_catalog
        source: photometry_catalog
      photoz_trained_model:
        id: photoz_trained_model
        source: photoz_trained_model
      zmax:
        id: zmax
        source: zmax@PZPDFMLZ
    out:
    - photoz_pdfs
    run: PZPDFMLZ.cwl
  TXBrighterFatterPlot:
    in:
      band:
        id: band
        source: band@TXBrighterFatterPlot
      config:
        id: config
        source: config
      mmax:
        id: mmax
        source: mmax@TXBrighterFatterPlot
      mmin:
        id: mmin
        source: mmin@TXBrighterFatterPlot
      nbin:
        id: nbin
        source: nbin@TXBrighterFatterPlot
      star_catalog:
        id: star_catalog
        source: star_catalog
    out:
    - brighter_fatter_plot
    - brighter_fatter_data
    run: TXBrighterFatterPlot.cwl
  TXDiagnosticMaps:
    in:
      chunk_rows:
        id: chunk_rows
        source: chunk_rows@TXDiagnosticMaps
      config:
        id: config
        source: config
      dec_cent:
        id: dec_cent
        source: dec_cent@TXDiagnosticMaps
      depth_band:
        id: depth_band
        source: depth_band@TXDiagnosticMaps
      flag_exponent_max:
        id: flag_exponent_max
        source: flag_exponent_max@TXDiagnosticMaps
      npix_x:
        id: npix_x
        source: npix_x@TXDiagnosticMaps
      npix_y:
        id: npix_y
        source: npix_y@TXDiagnosticMaps
      nside:
        id: nside
        source: nside@TXDiagnosticMaps
      photometry_catalog:
        id: photometry_catalog
        source: photometry_catalog
      pixel_size:
        id: pixel_size
        source: pixel_size@TXDiagnosticMaps
      pixelization:
        id: pixelization
        source: pixelization@TXDiagnosticMaps
      ra_cent:
        id: ra_cent
        source: ra_cent@TXDiagnosticMaps
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      snr_delta:
        id: snr_delta
        source: snr_delta@TXDiagnosticMaps
      snr_threshold:
        id: snr_threshold
        source: snr_threshold@TXDiagnosticMaps
      sparse:
        id: sparse
        source: sparse@TXDiagnosticMaps
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
      true_shear:
        id: true_shear
        source: true_shear@TXDiagnosticMaps
    out:
    - diagnostic_maps
    - tracer_metdata
    run: TXDiagnosticMaps.cwl
  TXDiagnosticPlots:
    in:
      chunk_rows:
        id: chunk_rows
        source: chunk_rows@TXDiagnosticPlots
      config:
        id: config
        source: config
      delta_gamma:
        id: delta_gamma
        source: delta_gamma@TXDiagnosticPlots
      photometry_catalog:
        id: photometry_catalog
        source: photometry_catalog
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
    out:
    - g_psf_T
    - g_psf_g
    - g1_hist
    - g2_hist
    - g_snr
    - g_T
    - snr_hist
    - mag_hist
    run: TXDiagnosticPlots.cwl
  TXGammaTBrightStars:
    in:
      bin_slop:
        id: bin_slop
        source: bin_slop@TXGammaTBrightStars
      calcs:
        id: calcs
        source: calcs@TXGammaTBrightStars
      config:
        id: config
        source: config
      cores_per_task:
        id: cores_per_task
        source: cores_per_task@TXGammaTBrightStars
      flip_g2:
        id: flip_g2
        source: flip_g2@TXGammaTBrightStars
      max_sep:
        id: max_sep
        source: max_sep@TXGammaTBrightStars
      min_sep:
        id: min_sep
        source: min_sep@TXGammaTBrightStars
      nbins:
        id: nbins
        source: nbins@TXGammaTBrightStars
      photoz_stack:
        id: photoz_stack
        source: TXPhotozStack/photoz_stack
      random_cats:
        id: random_cats
        source: TXRandomCat/random_cats
      reduce_randoms_size:
        id: reduce_randoms_size
        source: reduce_randoms_size@TXGammaTBrightStars
      sep_units:
        id: sep_units
        source: sep_units@TXGammaTBrightStars
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      star_catalog:
        id: star_catalog
        source: star_catalog
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
      verbose:
        id: verbose
        source: verbose@TXGammaTBrightStars
    out:
    - gammat_bright_stars
    - gammat_bright_stars_plot
    run: TXGammaTBrightStars.cwl
  TXGammaTDimStars:
    in:
      bin_slop:
        id: bin_slop
        source: bin_slop@TXGammaTDimStars
      calcs:
        id: calcs
        source: calcs@TXGammaTDimStars
      config:
        id: config
        source: config
      cores_per_task:
        id: cores_per_task
        source: cores_per_task@TXGammaTDimStars
      flip_g2:
        id: flip_g2
        source: flip_g2@TXGammaTDimStars
      max_sep:
        id: max_sep
        source: max_sep@TXGammaTDimStars
      min_sep:
        id: min_sep
        source: min_sep@TXGammaTDimStars
      nbins:
        id: nbins
        source: nbins@TXGammaTDimStars
      photoz_stack:
        id: photoz_stack
        source: TXPhotozStack/photoz_stack
      random_cats:
        id: random_cats
        source: TXRandomCat/random_cats
      reduce_randoms_size:
        id: reduce_randoms_size
        source: reduce_randoms_size@TXGammaTDimStars
      sep_units:
        id: sep_units
        source: sep_units@TXGammaTDimStars
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      star_catalog:
        id: star_catalog
        source: star_catalog
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
      verbose:
        id: verbose
        source: verbose@TXGammaTDimStars
    out:
    - gammat_dim_stars
    - gammat_dim_stars_plot
    run: TXGammaTDimStars.cwl
  TXMapPlots:
    in:
      config:
        id: config
        source: config
      diagnostic_maps:
        id: diagnostic_maps
        source: TXDiagnosticMaps/diagnostic_maps
    out:
    - depth_map
    - ngal_lens_map
    - g1_map
    - g2_map
    - flag_map
    - mask_map
    run: TXMapPlots.cwl
  TXPSFDiagnostics:
    in:
      config:
        id: config
        source: config
      star_catalog:
        id: star_catalog
        source: star_catalog
    out:
    - e1_psf_residual_hist
    - e2_psf_residual_hist
    - T_psf_residual_hist
    run: TXPSFDiagnostics.cwl
  TXPhotozPlots:
    in:
      config:
        id: config
        source: config
      photoz_stack:
        id: photoz_stack
        source: TXPhotozStack/photoz_stack
    out:
    - nz_lens
    - nz_source
    run: TXPhotozPlots.cwl
  TXPhotozStack:
    in:
      chunk_rows:
        id: chunk_rows
        source: chunk_rows@TXPhotozStack
      config:
        id: config
        source: config
      photoz_pdfs:
        id: photoz_pdfs
        source: PZPDFMLZ/photoz_pdfs
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
    out:
    - photoz_stack
    run: TXPhotozStack.cwl
  TXRandomCat:
    in:
      Mstar:
        id: Mstar
        source: Mstar@TXRandomCat
      alpha:
        id: alpha
        source: alpha@TXRandomCat
      config:
        id: config
        source: config
      density:
        id: density
        source: density@TXRandomCat
      diagnostic_maps:
        id: diagnostic_maps
        source: TXDiagnosticMaps/diagnostic_maps
      photoz_stack:
        id: photoz_stack
        source: TXPhotozStack/photoz_stack
      sigma_e:
        id: sigma_e
        source: sigma_e@TXRandomCat
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
    out:
    - random_cats
    run: TXRandomCat.cwl
  TXRoweStatistics:
    in:
      bin_slop:
        id: bin_slop
        source: bin_slop@TXRoweStatistics
      config:
        id: config
        source: config
      max_sep:
        id: max_sep
        source: max_sep@TXRoweStatistics
      min_sep:
        id: min_sep
        source: min_sep@TXRoweStatistics
      nbins:
        id: nbins
        source: nbins@TXRoweStatistics
      psf_size_units:
        id: psf_size_units
        source: psf_size_units@TXRoweStatistics
      sep_units:
        id: sep_units
        source: sep_units@TXRoweStatistics
      star_catalog:
        id: star_catalog
        source: star_catalog
    out:
    - rowe134
    - rowe25
    - rowe_stats
    run: TXRoweStatistics.cwl
  TXSelector:
    in:
      T_cut:
        id: T_cut
        source: T_cut@TXSelector
      bands:
        id: bands
        source: bands@TXSelector
      calibration_table:
        id: calibration_table
        source: calibration_table
      chunk_rows:
        id: chunk_rows
        source: chunk_rows@TXSelector
      config:
        id: config
        source: config
      cperp_cut:
        id: cperp_cut
        source: cperp_cut@TXSelector
      delta_gamma:
        id: delta_gamma
        source: delta_gamma@TXSelector
      i_hi_cut:
        id: i_hi_cut
        source: i_hi_cut@TXSelector
      i_lo_cut:
        id: i_lo_cut
        source: i_lo_cut@TXSelector
      input_pz:
        id: input_pz
        source: input_pz@TXSelector
      photometry_catalog:
        id: photometry_catalog
        source: photometry_catalog
      r_cpar_cut:
        id: r_cpar_cut
        source: r_cpar_cut@TXSelector
      r_hi_cut:
        id: r_hi_cut
        source: r_hi_cut@TXSelector
      r_i_cut:
        id: r_i_cut
        source: r_i_cut@TXSelector
      r_lo_cut:
        id: r_lo_cut
        source: r_lo_cut@TXSelector
      random_seed:
        id: random_seed
        source: random_seed@TXSelector
      s2n_cut:
        id: s2n_cut
        source: s2n_cut@TXSelector
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      verbose:
        id: verbose
        source: verbose@TXSelector
      zbin_edges:
        id: zbin_edges
        source: zbin_edges@TXSelector
    out:
    - tomography_catalog
    run: TXSelector.cwl
  TXTwoPoint:
    in:
      bin_slop:
        id: bin_slop
        source: bin_slop@TXTwoPoint
      calcs:
        id: calcs
        source: calcs@TXTwoPoint
      config:
        id: config
        source: config
      cores_per_task:
        id: cores_per_task
        source: cores_per_task@TXTwoPoint
      do_pos_pos:
        id: do_pos_pos
        source: do_pos_pos@TXTwoPoint
      do_shear_pos:
        id: do_shear_pos
        source: do_shear_pos@TXTwoPoint
      do_shear_shear:
        id: do_shear_shear
        source: do_shear_shear@TXTwoPoint
      flip_g2:
        id: flip_g2
        source: flip_g2@TXTwoPoint
      lens_bins:
        id: lens_bins
        source: lens_bins@TXTwoPoint
      max_sep:
        id: max_sep
        source: max_sep@TXTwoPoint
      min_sep:
        id: min_sep
        source: min_sep@TXTwoPoint
      nbins:
        id: nbins
        source: nbins@TXTwoPoint
      photoz_stack:
        id: photoz_stack
        source: TXPhotozStack/photoz_stack
      random_cats:
        id: random_cats
        source: TXRandomCat/random_cats
      reduce_randoms_size:
        id: reduce_randoms_size
        source: reduce_randoms_size@TXTwoPoint
      sep_units:
        id: sep_units
        source: sep_units@TXTwoPoint
      shear_catalog:
        id: shear_catalog
        source: shear_catalog
      source_bins:
        id: source_bins
        source: source_bins@TXTwoPoint
      tomography_catalog:
        id: tomography_catalog
        source: TXSelector/tomography_catalog
      verbose:
        id: verbose
        source: verbose@TXTwoPoint
    out:
    - twopoint_data
    run: TXTwoPoint.cwl
  TXTwoPointPlots:
    in:
      config:
        id: config
        source: config
      twopoint_data:
        id: twopoint_data
        source: TXTwoPoint/twopoint_data
    out:
    - shear_xi
    - shearDensity_xi
    - density_xi
    run: TXTwoPointPlots.cwl
