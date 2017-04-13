# Firefox Demo Setup

set FIREFOX_BIN=%ProgramFiles(x86)%\Mozilla Firefox
set FIREFOX_HOME=%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles
set DEMO_HOME=%FIREFOX_HOME%\Demo
set DEMO_PROFILE=Demo
set FIREFOX_EXE=%FIREFOX_BIN%\firefox.exe
"%FIREFOX_EXE%" --CreateProfile "%DEMO_PROFILE% %DEMO_HOME%"
"%FIREFOX_EXE%" -ProfileManager "%DEMO_PROFILE%"

call shortcutJS.bat -linkfile "%~dp0\Firefox %DEMO_PROFILE%.lnk" -target %FIREFOX_EXE% -linkarguments "-ProfileManager \"%DEMO_PROFILE%\""
