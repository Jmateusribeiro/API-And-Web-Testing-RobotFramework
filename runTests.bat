set REPORT_TITTLE="Robot Tests"
set TEST_NAME=tests
set FILEPATH=%~dp0

set BROWSER=chrome

set tmptime=%time: =0%
set MyTime=%tmptime:~0,2%%tmptime:~3,2%%tmptime:~6,2%
set MyDate=%date:~6,4%%date:~3,2%%date:~0,2%

set REPORT_DIR=%FILEPATH%\reports\Standard_run_%MyDate%_%MyTime%
mkdir %REPORT_DIR%


robot --pythonpath . -d %REPORT_DIR% --logtitle %REPORT_TITTLE% --variable BROWSER:%BROWSER% --reporttitle %REPORT_TITTLE% %FILEPATH%%TEST_NAME%


set tmptime=%time: =0%
set MyTime=%tmptime:~0,2%%tmptime:~3,2%%tmptime:~6,2%
set MyDate=%date:~6,4%%date:~3,2%%date:~0,2%

set REPORT_DIR=%FILEPATH%\reports\Parallel_run_%MyDate%_%MyTime%
mkdir %REPORT_DIR%
pabot --pythonpath . -d %REPORT_DIR% --logtitle %REPORT_TITTLE% --variable BROWSER:%BROWSER% --reporttitle %REPORT_TITTLE% %FILEPATH%%TEST_NAME%\.

pause