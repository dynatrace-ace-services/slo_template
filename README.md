# SLO template for latest Platform

[RFE - thank you for voting](https://community.dynatrace.com/t5/Product-ideas/RFE-Do-not-show-an-error-when-SLO-tile-on-Grail-Dashboard-is/idi-p/281309#M52855)

1) Deploy with monaco these 3 SLO templates

        - High
        - Medium 
        - Low

2) Focus SLO on your business criteria based on these entity-types :

        - Application Performance = dt.entity.application (for RUM on GRAIL only)
        - Application Success Rate = dt.entity.application (for RUM on GRAIL only)
        - Service Success Rate = dt.entity.service
        - Key Request Success Rate = dt.entity.service_method

3) Automatic activation SLO template by putting these tags on each entity :
   
        - slo:<application_context>
        - slo_level:high|medium|level
        - slo_alert:on|off
        - slo_alert_pert:on|off (for application only)

4) Use recommended values for each template High, Medium and Low, or adapt them for your context :

        - target / warning
        - burn rate threshold
        - violatingsamples / slidingwindow / dealertingsamples
   
5) Use SLO segment based on your application context to open the SLO template Dashboard and display  :

        - SLO value and Burn-rate alert for application performance
        - SLO value and Burn-rate alert for application successrate
        - SLO value and Burn-rate alert for service successrate
        - SLO value and Burn-rate alert for key request (service method) successrate
        

## Permissions Client OAUTH2 for MONACO
use [myaccount](https://myaccount.dynatrace.com/accounts) to generate CLIENT_ID (DT_OAUTH_CLIENT_ID_MONACO) and SECRET (DT_OAUTH_CLIENT_SECRET_MONACO)

    app-engine:apps:run
    settings:objects:read
    settings:objects:write
    settings:schemas:read
    slo:slos:read
    slo:slos:write
    storage:filter-segments:read
    storage:filter-segments:write
    storage:filter-segments:share
    storage:filter-segments:admin
    document:documents:write
    document:documents:read
    document:documents:admin

## Variables for MONACO

    export DT_GRAIL_TENANT_URL=https://mytenantid.apps.dynatrace.com
    export DT_OAUTH_CLIENT_ID_MONACO=dt0s02.ABCDEF
    export DT_OAUTH_CLIENT_SECRET_MONACO=dt0s02.ABCDEF.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Installation with MONACO

    git clone https://github.com/dynatrace-ace-services/slo_template
    cd slo_template
    curl -L https://github.com/Dynatrace/dynatrace-configuration-as-code/releases/latest/download/monaco-linux-amd64 -o monaco
    chmod +x monaco

## Deployment SLO templates

    monaco deploy manifest.yaml -p slo_lowleveltemplate
    monaco deploy manifest.yaml -p slo_mediumleveltemplate
    monaco deploy manifest.yaml -p slo_highleveltemplate

## Default value 
Optional :  
  No need to set these slo variables,  
  if you need to change one of them, you've just to set the specific variable and (re)deploy the SLO template with Monaco.  

- High level

      #Slo_period_day default 7
      export Slo_period_day=7
      
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
      
      #Slidingwindow
      export Slidingwindow_highslo_userexperience=15
      export Slidingwindow_highslo=5
      export Slidingwindow_highslo_userexperiencevitallcp=$Slidingwindow_highslo_userexperience
      export Slidingwindow_highslo_userexperiencesuccessrate=$Slidingwindow_highslo_userexperience
      export Slidingwindow_highslo_servicesuccessrate=$Slidingwindow_highslo
      export Slidingwindow_highslo_servicemethodsuccessrate=$Slidingwindow_highslo
      
      #Dealertingsamples
      export Dealertingsamples_highslo=5
      export Dealertingsamples_highslo_userexperiencevitallcp=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_userexperiencesuccessrate=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_servicesuccessrate=$Dealertingsamples_highslo
      export Dealertingsamples_highslo_servicemethodsuccessrate=$Dealertingsamples_highslo


- Medium level

      #Slo_period_day default 7
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
      
      #Slidingwindow
      export Slidingwindow_mediumslo_userexperience=30
      export Slidingwindow_mediumslo=5
      export Slidingwindow_mediumslo_userexperiencevitallcp=$Slidingwindow_mediumslo_userexperience
      export Slidingwindow_mediumslo_userexperiencesuccessrate=$Slidingwindow_mediumslo_userexperience
      export Slidingwindow_mediumslo_servicesuccessrate=$Slidingwindow_mediumslo
      export Slidingwindow_mediumslo_servicemethodsuccessrate=$Slidingwindow_mediumslo
      
      #Dealertingsamples
      export Dealertingsamples_mediumslo=5
      export Dealertingsamples_mediumslo_userexperiencevitallcp=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_userexperiencesuccessrate=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_servicesuccessrate=$Dealertingsamples_mediumslo
      export Dealertingsamples_mediumslo_servicemethodsuccessrate=$Dealertingsamples_mediumslo

- Low level

      #Slo_period_day default 7
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
      
      #Slidingwindow
      export Slidingwindow_lowslo_userexperience=30
      export Slidingwindow_lowslo=10
      export Slidingwindow_lowslo_userexperiencevitallcp=$Slidingwindow_lowslo_userexperience
      export Slidingwindow_lowslo_userexperiencesuccessrate=$Slidingwindow_lowslo_userexperience
      export Slidingwindow_lowslo_servicesuccessrate=$Slidingwindow_lowslo
      export Slidingwindow_lowslo_servicemethodsuccessrate=$Slidingwindow_lowslo
      
      #Dealertingsamples
      export Dealertingsamples_lowslo=5
      export Dealertingsamples_lowslo_userexperiencevitallcp=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_userexperiencesuccessrate=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_servicesuccessrate=$Dealertingsamples_lowslo
      export Dealertingsamples_lowslo_servicemethodsuccessrate=$Dealertingsamples_lowslo

