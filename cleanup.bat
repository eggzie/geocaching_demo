rem cleaup
set CHROME_HOME=%USERPROFILE%\AppData\Local\Google\Chrome\User Data
set FIREFOX_HOME=%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles
set DEMO_PROFILE=Demo
rm "%~dp0\Chrome %DEMO_PROFILE%.lnk"
rm "%~dp0\Firefox %DEMO_PROFILE%.lnk"
rmdir /S %CHROME_HOME%\%DEMO_PROFILE%
rmdir /S %FIREFOX_HOME%\%DEMO_PROFILE%