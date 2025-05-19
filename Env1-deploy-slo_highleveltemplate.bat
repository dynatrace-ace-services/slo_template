#slo_period_day default 7
set Slo_period_day=21

#Target
set Target_highslo=98
set Target_highslo_userexperiencevitallcp=%Target_highslo%
set Target_highslo_userexperiencesuccessrate=%Target_highslo%
set Target_highslo_servicesuccessrate=%Target_highslo%
set Target_highslo_servicemethodsuccessrate=%Target_highslo%

#Warning
set Warning_highslo=99
set Warning_highslo_userexperiencevitallcp=%Warning_highslo%
set Warning_highslo_userexperiencesuccessrate=%Warning_highslo%
set Warning_highslo_servicesuccessrate=%Warning_highslo%
set Warning_highslo_servicemethodsuccessrate=%Warning_highslo%

#Burnrate
set Burnrate_highslo=4
set Burnrate_highslo_userexperiencevitallcp=%Burnrate_highslo%
set Burnrate_highslo_userexperiencesuccessrate=%Burnrate_highslo%
set Burnrate_highslo_servicesuccessrate=%Burnrate_highslo%
set Burnrate_highslo_servicemethodsuccessrate=%Burnrate_highslo%

#Violatingsamples
set Violatingsamples_highslo_userexperience=10
set Violatingsamples_highslo=2
set Violatingsamples_highslo_userexperiencevitallcp=%Violatingsamples_highslo_userexperience%
set Violatingsamples_highslo_userexperiencesuccessrate=%Violatingsamples_highslo_userexperience%
set Violatingsamples_highslo_servicesuccessrate=%Violatingsamples_highslo%
set Violatingsamples_highslo_servicemethodsuccessrate=%Violatingsamples_highslo%

#Slingwindow
set Slingwindow_highslo_userexperience=15
set Slingwindow_highslo=5
set Slingwindow_highslo_userexperiencevitallcp=%Slingwindow_highslo_userexperience%
set Slingwindow_highslo_userexperiencesuccessrate=%Slingwindow_highslo_userexperience%
set Slingwindow_highslo_servicesuccessrate=%Slingwindow_highslo%
set Slingwindow_highslo_servicemethodsuccessrate=%Slingwindow_highslo%

#Dealertingsamples
set Dealertingsamples_highslo=5
set Dealertingsamples_highslo_userexperiencevitallcp=%Dealertingsamples_highslo%
set Dealertingsamples_highslo_userexperiencesuccessrate=%Dealertingsamples_highslo%
set Dealertingsamples_highslo_servicesuccessrate=%Dealertingsamples_highslo%
set Dealertingsamples_highslo_servicemethodsuccessrate=%Dealertingsamples_highslo%

monaco deploy manifest.yaml -e MyEnv -p slo_highleveltemplate

pause
	
