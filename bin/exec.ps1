$JMETER_HOME="C:\PROGRA~1\apache-jmeter-5.0"
$DATETIME=Get-Date -UFormat %Y%m%d%H%M%S
$PROFILE="PerformanceTest"
$TEMP_PROFILE="$PROFILE-$DATETIME"

Copy-Item .\$PROFILE.jmx .\$TEMP_PROFILE.jmx

New-Item log -ItemType Directory -ErrorAction SilentlyContinue
New-Item report -ItemType Directory -ErrorAction SilentlyContinue
Invoke-Expression "$JMETER_HOME\bin\jmeter.bat -n -t $TEMP_PROFILE.jmx -l .\log\$TEMP_PROFILE.log -e -o .\report\$TEMP_PROFILE"

Remove-Item .\$TEMP_PROFILE.jmx
