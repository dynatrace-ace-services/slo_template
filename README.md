## Permissions OAUTH2

    app-engine:apps:run
    settings:objects:read
    settings:objects:write
    settings:objects:admin
    settings:schemas:read
    automation:workflows:read
    automation:workflows:write
    automation:rules:read
    automation:rules:write
    automation:calendars:read
    automation:calendars:write
    automation:workflows:admin
    storage:bucket-definitions:read
    storage:bucket-definitions:write
    slo:objective-templates:read
    slo:slos:read
    slo:slos:write
    storage:filter-segments:read
    storage:filter-segments:write
    storage:filter-segments:share
    storage:filter-segments:admin
    openpipeline:configurations:read
    openpipeline:configurations:write
    document:documents:write
    document:documents:read
    document:documents:admin

## Varibales

    export DT_GRAIL_TENANT_URL=https://mytenantid.apps.dynatrace.com
    export DT_OAUTH_CLIENT_ID_MONACO=dt0s02.ABCDEF
    export DT_OAUTH_CLIENT_SECRET_MONACO=dt0s02.ABCDEF.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Installation (on linux)

    git clone https://github.com/dynatrace-ace-services/slo_template
    cd slo_template
    curl -L https://github.com/Dynatrace/dynatrace-configuration-as-code/releases/latest/download/monaco-linux-amd64 -o monaco
    chmod +x monaco

## Deploiment

    monaco deploy manifest.yaml -p slo_lowleveltemplate
    monaco deploy manifest.yaml -p slo_mediumleveltemplate
    monaco deploy manifest.yaml -p slo_highleveltemplate

## Default value

- Low level

      #slo_period_day default 7
      export Slo_period_day=7
      
      #Target
      export Target_lowslo=90
      export Target_lowslo_userexperiencevitallcp=$Target_lowslo
      export Target_lowslo_userexperiencesuccessrate=$Target_lowslo
      export Target_lowslo_servicesuccessrate=$Target_lowslo
      export Target_lowslo_servicemethodsuccessrate=$Target_lowslo
      
      #Warning
      export Warning_lowslo=95
      export Warning_lowslo_userexperiencevitallcp=$Warning_lowslo
      export Warning_lowslo_userexperiencesuccessrate=$Warning_lowslo
      export Warning_lowslo_servicesuccessrate=$Warning_lowslo
      export Warning_lowslo_servicemethodsuccessrate=$Warning_lowslo
      
      #Burnrate
      export Burnrate_lowslo=20
      export Burnrate_lowslo_userexperiencevitallcp=$Burnrate_lowslo
      export Burnrate_lowslo_userexperiencesuccessrate=$Burnrate_lowslo
      export Burnrate_lowslo_servicesuccessrate=$Burnrate_lowslo
      export Burnrate_lowslo_servicemethodsuccessrate=$Burnrate_lowslo
      
      #Violatingsamples
      export Violatingsamples_lowslo_userexperience=20
      export Violatingsamples_lowslo=5
      export Violatingsamples_lowslo_userexperiencevitallcp=$Violatingsamples_lowslo_userexperience
      export Violatingsamples_lowslo_userexperiencesuccessrate=$Violatingsamples_lowslo_userexperience
      export Violatingsamples_lowslo_servicesuccessrate=$Violatingsamples_lowslo
      export Violatingsamples_lowslo_servicemethodsuccessrate=$Violatingsamples_lowslo
      
      #Slingwindow
      export Slingwindow_lowslo_userexperience=30
      export Slingwindow_lowslo=10
      export Slingwindow_lowslo_userexperiencevitallcp=$Slingwindow_lowslo_userexperience
      export Slingwindow_lowslo_userexperiencesuccessrate=$Slingwindow_lowslo_userexperience
      export Slingwindow_lowslo_servicesuccessrate=$Slingwindow_lowslo
      export Slingwindow_lowslo_servicemethodsuccessrate=$Slingwindow_lowslo
      
      #Dealertingsamples
      export Dealertingsamples_lowslo=5
      export Dealertingsamples_lowslo_userexperiencevitallcp=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_userexperiencesuccessrate=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_servicesuccessrate=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_servicemethodsuccessrate=$Dealertingsamples_lowslo

- Medium level

      #slo_period_day default 7
      export Slo_period_day=7
      
      #Target
      export Target_mediumslo=95
      export Target_mediumslo_userexperiencevitallcp=$Target_mediumslo
      export Target_mediumslo_userexperiencesuccessrate=$Target_mediumslo
      export Target_mediumslo_servicesuccessrate=$Target_mediumslo
      export Target_mediumslo_servicemethodsuccessrate=$Target_mediumslo
      
      #Warning
      export Warning_mediumslo=98
      export Warning_mediumslo_userexperiencevitallcp=$Warning_mediumslo
      export Warning_mediumslo_userexperiencesuccessrate=$Warning_mediumslo
      export Warning_mediumslo_servicesuccessrate=$Warning_mediumslo
      export Warning_mediumslo_servicemethodsuccessrate=$Warning_mediumslo
      
      #Burnrate
      export Burnrate_mediumslo=10
      export Burnrate_mediumslo_userexperiencevitallcp=$Burnrate_mediumslo
      export Burnrate_mediumslo_userexperiencesuccessrate=$Burnrate_mediumslo
      export Burnrate_mediumslo_servicesuccessrate=$Burnrate_mediumslo
      export Burnrate_mediumslo_servicemethodsuccessrate=$Burnrate_mediumslo
      
      #Violatingsamples
      export Violatingsamples_mediumslo_userexperience=15
      export Violatingsamples_mediumslo=3
      export Violatingsamples_mediumslo_userexperiencevitallcp=$Violatingsamples_mediumslo_userexperience
      export Violatingsamples_mediumslo_userexperiencesuccessrate=$Violatingsamples_mediumslo_userexperience
      export Violatingsamples_mediumslo_servicesuccessrate=$Violatingsamples_mediumslo
      export Violatingsamples_mediumslo_servicemethodsuccessrate=$Violatingsamples_mediumslo
      
      #Slingwindow
      export Slingwindow_mediumslo_userexperience=30
      export Slingwindow_mediumslo=5
      export Slingwindow_mediumslo_userexperiencevitallcp=$Slingwindow_mediumslo_userexperience
      export Slingwindow_mediumslo_userexperiencesuccessrate=$Slingwindow_mediumslo_userexperience
      export Slingwindow_mediumslo_servicesuccessrate=$Slingwindow_mediumslo
      export Slingwindow_mediumslo_servicemethodsuccessrate=$Slingwindow_mediumslo
      
      #Dealertingsamples
      export Dealertingsamples_mediumslo=5
      export Dealertingsamples_mediumslo_userexperiencevitallcp=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_userexperiencesuccessrate=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_servicesuccessrate=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_servicemethodsuccessrate=$Dealertingsamples_mediumslo

- High level

      #slo_period_day default 7
      export Slo_period_day=21
      
      #Target
      export Target_highslo=98
      export Target_highslo_userexperiencevitallcp=$Target_highslo
      export Target_highslo_userexperiencesuccessrate=$Target_highslo
      export Target_highslo_servicesuccessrate=$Target_highslo
      export Target_highslo_servicemethodsuccessrate=$Target_highslo
      
      #Warning
      export Warning_highslo=99
      export Warning_highslo_userexperiencevitallcp=$Warning_highslo
      export Warning_highslo_userexperiencesuccessrate=$Warning_highslo
      export Warning_highslo_servicesuccessrate=$Warning_highslo
      export Warning_highslo_servicemethodsuccessrate=$Warning_highslo
      
      #Burnrate
      export Burnrate_highslo=4
      export Burnrate_highslo_userexperiencevitallcp=$Burnrate_highslo
      export Burnrate_highslo_userexperiencesuccessrate=$Burnrate_highslo
      export Burnrate_highslo_servicesuccessrate=$Burnrate_highslo
      export Burnrate_highslo_servicemethodsuccessrate=$Burnrate_highslo
      
      #Violatingsamples
      export Violatingsamples_highslo_userexperience=10
      export Violatingsamples_highslo=2
      export Violatingsamples_highslo_userexperiencevitallcp=$Violatingsamples_highslo_userexperience
      export Violatingsamples_highslo_userexperiencesuccessrate=$Violatingsamples_highslo_userexperience
      export Violatingsamples_highslo_servicesuccessrate=$Violatingsamples_highslo
      export Violatingsamples_highslo_servicemethodsuccessrate=$Violatingsamples_highslo
      
      #Slingwindow
      export Slingwindow_highslo_userexperience=15
      export Slingwindow_highslo=5
      export Slingwindow_highslo_userexperiencevitallcp=$Slingwindow_highslo_userexperience
      export Slingwindow_highslo_userexperiencesuccessrate=$Slingwindow_highslo_userexperience
      export Slingwindow_highslo_servicesuccessrate=$Slingwindow_highslo
      export Slingwindow_highslo_servicemethodsuccessrate=$Slingwindow_highslo
      
      #Dealertingsamples
      export Dealertingsamples_highslo=5
      export Dealertingsamples_highslo_userexperiencevitallcp=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_userexperiencesuccessrate=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_servicesuccessrate=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_servicemethodsuccessrate=$Dealertingsamples_highslo
