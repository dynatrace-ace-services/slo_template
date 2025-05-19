#slo_period_day default 7
set Slo_period_day=7

#Target
set Target_lowslo=90
set Target_lowslo_userexperiencevitallcp=%Target_lowslo%
set Target_lowslo_userexperiencesuccessrate=%Target_lowslo%
set Target_lowslo_servicesuccessrate=%Target_lowslo%
set Target_lowslo_servicemethodsuccessrate=%Target_lowslo%

#Warning
set Warning_lowslo=95
set Warning_lowslo_userexperiencevitallcp=%Warning_lowslo%
set Warning_lowslo_userexperiencesuccessrate=%Warning_lowslo%
set Warning_lowslo_servicesuccessrate=%Warning_lowslo%
set Warning_lowslo_servicemethodsuccessrate=%Warning_lowslo%

#Burnrate
set Burnrate_lowslo=20
set Burnrate_lowslo_userexperiencevitallcp=%Burnrate_lowslo%
set Burnrate_lowslo_userexperiencesuccessrate=%Burnrate_lowslo%
set Burnrate_lowslo_servicesuccessrate=%Burnrate_lowslo%
set Burnrate_lowslo_servicemethodsuccessrate=%Burnrate_lowslo%

#Violatingsamples
set Violatingsamples_lowslo_userexperience=20
set Violatingsamples_lowslo=5
set Violatingsamples_lowslo_userexperiencevitallcp=%Violatingsamples_lowslo_userexperience%
set Violatingsamples_lowslo_userexperiencesuccessrate=%Violatingsamples_lowslo_userexperience%
set Violatingsamples_lowslo_servicesuccessrate=%Violatingsamples_lowslo%
set Violatingsamples_lowslo_servicemethodsuccessrate=%Violatingsamples_lowslo%

#Slingwindow
set Slingwindow_lowslo_userexperience=30
set Slingwindow_lowslo=10
set Slingwindow_lowslo_userexperiencevitallcp=%Slingwindow_lowslo_userexperience%
set Slingwindow_lowslo_userexperiencesuccessrate=%Slingwindow_lowslo_userexperience%
set Slingwindow_lowslo_servicesuccessrate=%Slingwindow_lowslo%
set Slingwindow_lowslo_servicemethodsuccessrate=%Slingwindow_lowslo%

#Dealertingsamples
set Dealertingsamples_lowslo=5
set Dealertingsamples_lowslo_userexperiencevitallcp=%Dealertingsamples_lowslo%
set Dealertingsamples_lowslo_userexperiencesuccessrate=%Dealertingsamples_lowslo%
set Dealertingsamples_lowslo_servicesuccessrate=%Dealertingsamples_lowslo%
set Dealertingsamples_lowslo_servicemethodsuccessrate=%Dealertingsamples_lowslo%

monaco deploy manifest.yaml -e Env1 -p slo_lowleveltemplate

pause
	