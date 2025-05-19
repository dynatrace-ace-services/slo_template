#Rum on Grail
set RumOnGrailDisabled=false

#slo_period_day default 7
set Slo_period_day=7

#Target
set Target_mediumslo=95
set Target_mediumslo_userexperiencevitallcp=%Target_mediumslo%
set Target_mediumslo_userexperiencesuccessrate=%Target_mediumslo%
set Target_mediumslo_servicesuccessrate=%Target_mediumslo%
set Target_mediumslo_servicemethodsuccessrate=%Target_mediumslo%

#Warning
set Warning_mediumslo=98
set Warning_mediumslo_userexperiencevitallcp=%Warning_mediumslo%
set Warning_mediumslo_userexperiencesuccessrate=%Warning_mediumslo%
set Warning_mediumslo_servicesuccessrate=%Warning_mediumslo%
set Warning_mediumslo_servicemethodsuccessrate=%Warning_mediumslo%

#Burnrate
set Burnrate_mediumslo=10
set Burnrate_mediumslo_userexperiencevitallcp=%Burnrate_mediumslo%
set Burnrate_mediumslo_userexperiencesuccessrate=%Burnrate_mediumslo%
set Burnrate_mediumslo_servicesuccessrate=%Burnrate_mediumslo%
set Burnrate_mediumslo_servicemethodsuccessrate=%Burnrate_mediumslo%

#Violatingsamples
set Violatingsamples_mediumslo_userexperience=15
set Violatingsamples_mediumslo=3
set Violatingsamples_mediumslo_userexperiencevitallcp=%Violatingsamples_mediumslo_userexperience%
set Violatingsamples_mediumslo_userexperiencesuccessrate=%Violatingsamples_mediumslo_userexperience%
set Violatingsamples_mediumslo_servicesuccessrate=%Violatingsamples_mediumslo%
set Violatingsamples_mediumslo_servicemethodsuccessrate=%Violatingsamples_mediumslo%

#Slingwindow
set Slingwindow_mediumslo_userexperience=30
set Slingwindow_mediumslo=5
set Slingwindow_mediumslo_userexperiencevitallcp=%Slingwindow_mediumslo_userexperience%
set Slingwindow_mediumslo_userexperiencesuccessrate=%Slingwindow_mediumslo_userexperience%
set Slingwindow_mediumslo_servicesuccessrate=%Slingwindow_mediumslo%
set Slingwindow_mediumslo_servicemethodsuccessrate=%Slingwindow_mediumslo%

#Dealertingsamples
set Dealertingsamples_mediumslo=5
set Dealertingsamples_mediumslo_userexperiencevitallcp=%Dealertingsamples_mediumslo%
set Dealertingsamples_mediumslo_userexperiencesuccessrate=%Dealertingsamples_mediumslo%
set Dealertingsamples_mediumslo_servicesuccessrate=%Dealertingsamples_mediumslo%
set Dealertingsamples_mediumslo_servicemethodsuccessrate=%Dealertingsamples_mediumslo%

monaco deploy manifest.yaml -e Env1 -p slo_mediumleveltemplate

pause
	