**************************************************
This folder is to simulate New DPS system

	- Simulate OSLO file: DPS New Triplet 03 vr2-003-test04.len in TracePro
	- Original TracePro Simulation file: DPS New Triplet 03 vr2 - 003 - test04.oml [target and coded aperture mask can be changeable] 
	as backup
		Pattern: 128x128 13umx13um random pattern, file - RndP128_13um
		Three targets: Tirangle(customised Red), Square(customised Green) and Pentagon(customised DarkBlue) 
	- offset:
		Phi_1 = 67.636721
		Phi_2 = 83.482511
		L1 = 7.165492
		L2 = 4.643007
	
		wv = 0.45:0.0001:0.65
		NSF11
**************************************************
2018-01-11 Simulation:
%%% get simulation data 

	- TracePro file:DPS New triplet 03 vr2 - 003 - test04 - 02.oml 
	- Simulation file:DPS New triplet 03vr02-003-test04-02_1_ex1.sim
	- Light Source: Light Source
		1.664x1.664mm parallel light 256x256 rays for each wavelength 
		450nm 0.8 weight
		500nm 0.5 weight
		550nm 0.9 weight
		600nm 1 weight
		650nm 0.4 weight
**************************************************
2018-01-13 Simulation 
%%% get calibration data (linear displacement as 13um gap, 16 out of 31 wavelengths)
	
	- TracePro file: DPS New triplet 03vr2-003-test04-02.oml
	- Simulation file:DPS New triple 03vr2-003-test04-02_3_ex1.sim
	- Light Source: Calibration Light Source 16 out of  31 wv for 13um resolution
	weight all 1
		wavelength: [ 451.0, 458.0, 465.5, 473.5, 482.1, 491.3, 501.2, 511.9, 
			     523.5, 536.2, 550.0, 565.2, 581.9, 600.4, 621.0, 644.3]
		1w per ray, 16384 rays per wavelength
		
		illumination rays: 128x128

	- 2018-01-13 Calibration Data Folder
		- Detector Sampling 256x256 calibration data: the data is collected as 256 x 256 sampling at detector. Save as irradiance map at
		each wavelength. 16 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
		- Detector Sampling 512x512 calibration data: the data is collected as 512 x 512 sampling at detector. Save as irradiance map at
 		each wavelength. 16 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
**************************************************
2018-01-14 Simulation 
%%% get calibration data (linear displacement as 13um gap, rest 15 out of 31 wavelengths)
	
	- TracePro file: DPS New triplet 03vr2-003-test04-02.oml
	- Simulation file:DPS New triple 03vr2-003-test04-02_4_ex1.sim
	- Light Source: Calibration Light Source rest 15 out of  31 wv for 13um resolution
	weight all 1
		wavelength:  [ 454.5, 461.7, 469.5, 477.7, 486.6, 496.2, 506.5, 517.6, 
			     529.7, 542.9, 557.4, 573.3, 590.9, 610.4, 632.2]
		1w per ray, 16384 rays per wavelength
		
		illumination rays: 128x128

	- 2018-01-14 Calibration Data Folder
		- Detector Sampling 256x256 calibration data: the data is collected as 256 x 256 sampling at detector. Save as irradiance map at
		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
		- Detector Sampling 512x512 calibration data: the data is collected as 512 x 512 sampling at detector. Save as irradiance map at
 		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
**************************************************
2018-01-17 Simulation 
%%% get calibration data (linear displacement as 13um gap, 16 out of 31 wavelengths)
	
	- TracePro file: DPS New triplet 03vr2-003-test04-02.oml
	- Simulation file:DPS New triple 03vr2-003-test04-02_5_ex1.sim
	- Light Source: Calibration Light Source rest 15 out of  31 wv for 13um resolution
	weight all 1
		wavelength:  [ 451.0, 458.0, 465.5, 473.5, 482.1, 491.3, 501.2, 511.9, 
			     523.5, 536.2, 550.0, 565.2, 581.9, 600.4, 621.0, 644.3]
		1w per ray, 65536 rays per wavelength
		
		illumination rays: 256x256

	- 2018-01-17 Calibration Data Folder
		- Detector Sampling 256x256 calibration data: the data is collected as 256 x 256 sampling at detector. Save as irradiance map at
		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
		- Detector Sampling 512x512 calibration data: the data is collected as 512 x 512 sampling at detector. Save as irradiance map at
 		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
**************************************************

2018-01-19 Ground Truth 
%%% get ground truth
	
	- TracePro file: DPS New triplet 03vr2-003-test04-02.oml
	- Light Source: Calibration Light Source 16 out of  31 wv for 13um resolution
	weight all 1
		wavelength:  [ 451.0, 458.0, 465.5, 473.5, 482.1, 491.3, 501.2, 511.9, 
			     523.5, 536.2, 550.0, 565.2, 581.9, 600.4, 621.0, 644.3]
		1w per ray, 65536 rays per wavelength
		
		illumination rays: 256x256

	- 2018-01-19 Ground Truth Data Folder
		- Original Light Source 256: Detector sampled as 256x256 with 5wv light source
		- Original Light Source 512: Detector sampled as 512x512 with 5wv light source
		- Parallel Light Source 256: Detector sampled as 256x256 with 16 out of 31 wavelength
		- Parallel Light Source 512: Detector sampled as 512x512 with 15 out of 31 wavelength

**************************************************
2018-01-21 Simulation 
%%% get calibration data (linear displacement as 13um gap, the rest 15 out of 31 wavelengths)
	
	- TracePro file: DPS New triplet 03vr2-003-test04-02.oml
	- Simulation file:DPS New triple 03vr2-003-test04-02_7_ex1.sim
	- Light Source: Calibration Light Source rest 15 out of  31 wv for 13um resolution
	weight all 1
		wavelength:  [ 454.5, 461.7, 469.5, 477.7, 486.6, 496.2, 506.5, 517.6, 
			     529.7, 542.9, 557.4, 573.3, 590.9, 610.4, 632.2]
		1w per ray, 65536 rays per wavelength
		
		illumination rays: 256x256

	- 2018-01-21 Calibration Data Folder
		- Detector Sampling 256x256 calibration data: the data is collected as 256 x 256 sampling at detector. Save as irradiance map at
		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
		- Detector Sampling 512x512 calibration data: the data is collected as 512 x 512 sampling at detector. Save as irradiance map at
 		each wavelength. 15 wavelengths in total. Saved irradiance map data, irradiance map picture and Color RGB picture
**************************************************





