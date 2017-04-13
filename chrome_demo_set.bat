rem demo_setup.bat
set CHROME_HOME=%USERPROFILE%\AppData\Local\Google\Chrome\User Data
set CHROME_BIN=%ProgramFiles(x86)%\Google\Chrome\Application
rem setx CHROME_HOME "%CHROME_HOME%"
rem setx CHROME_BIN "%CHROME_BIN%"
set DEMO_PROFILE=Demo
set DEMO_HOME=%CHROME_HOME%\%DEMO_PROFILE%
set DEFAULT_HOME=%CHROME_HOME%\default
set CHROME_EXE="%CHROME_BIN%\chrome.exe"
mkdir %DEMO_HOME%

"%CHROME_EXE%" --user-data-dir="%DEMO_HOME%" -first-run

call shortcutJS.bat -linkfile "%~dp0\Chrome %DEMO_PROFILE%.lnk" -target "%CHROME_EXE%" -linkarguments "--user-data-dir=\"%DEMO_HOME%\""
