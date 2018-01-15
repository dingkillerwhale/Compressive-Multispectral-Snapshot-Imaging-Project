# 2018-01-15 Data Processing

Crop ROI from 256x256 simu data and cali data (16 out of 31) by using MATLAB file [DataCrop](https://github.com/dingkillerwhale/Compressive-Multispectral-Snapshot-Imaging-Project/blob/master/Simulation%20Data%20Processing/2018-01-13Data/DataCrop.m) file

Original Data used:

  - simu_256 from 2018-01-11 simulation data
  
  - Cali_256 from 2018-01-13 calibration data/ Detector Sampling256x256 calibration data
  
  - wv_selected: wavelength group which has linear displacement(31 wavelengths in 6.5um unit displacement)
  in current design 450nm - 650nm

For example,

- Coded Aperture has 128x128 array

- The ROI of central wavelength in cali data is set to be [65:(65 + 128 - 1) , 65:(65 + 128 - 1)]

- Due to 5 units' offset of longest wavelength upper to central wavelength and 10 units's offset of 
shortest wavelength lower to central wavelegnth, the ROI of cropping area should be 
[60:(60 + 10 + 5 + 128 - 1), 65:(65 + 128 - 1)]

- Rotate the whole dataset in 90 degree counter-clockwise and match cropped cali data to new cali_crop data

  Index 1 - 16 corresponds to wavelength from 450nm to 650nm (16 out of 31 wavelength as 13um unit displacement), respectively.

- Get wavlength combination (16 out of 31 wavelengths) as wv_cali.mat
