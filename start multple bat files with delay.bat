@echo off
setlocal

REM ==========================================================
REM SIMPLE BATCH WORKFLOW TEMPLATE
REM ==========================================================
REM EDITABLE SECTION (safe to change):
REM   - BAT1_PATH, BAT2_PATH, BAT3_PATH
REM   - DELAY_STEP1, DELAY_STEP2

set "BAT1_PATH=C:\path\to\script1.bat"
set "BAT2_PATH=C:\path\to\script2.bat"
set "BAT3_PATH=C:\path\to\script3.bat"

REM Delay after each step (seconds)
set "DELAY_STEP1=5"
set "DELAY_STEP2=5"

REM ==========================================================
REM STEP TEMPLATE (copy/paste to add more steps)
REM ==========================================================
REM echo [1/3] Starting: %BAT1_PATH%
REM call "%BAT1_PATH%"
REM if errorlevel 1 (
REM     echo [ERROR] %BAT1_PATH% failed with exit code %errorlevel%.
REM     exit /b %errorlevel%
REM )
REM timeout /t %DELAY_STEP1% /nobreak >nul

REM ==========================================================
REM !!! UNCHANGEABLE CORE LOGIC START (edit only step paths/delays) !!!
REM ==========================================================

REM -------------------- STEP 1 --------------------
echo [1/3] Starting: %BAT1_PATH%
call "%BAT1_PATH%"
if errorlevel 1 (
    echo [ERROR] %BAT1_PATH% failed with exit code %errorlevel%.
    exit /b %errorlevel%
)
timeout /t %DELAY_STEP1% /nobreak >nul

REM -------------------- STEP 2 --------------------
echo [2/3] Starting: %BAT2_PATH%
call "%BAT2_PATH%"
if errorlevel 1 (
    echo [ERROR] %BAT2_PATH% failed with exit code %errorlevel%.
    exit /b %errorlevel%
)
timeout /t %DELAY_STEP2% /nobreak >nul

REM -------------------- STEP 3 --------------------
echo [3/3] Starting: %BAT3_PATH%
call "%BAT3_PATH%"
if errorlevel 1 (
    echo [ERROR] %BAT3_PATH% failed with exit code %errorlevel%.
    exit /b %errorlevel%
)

echo Done. All batch files finished successfully.
endlocal
exit /b 0

REM ==========================================================
REM !!! UNCHANGEABLE CORE LOGIC END !!!
REM ==========================================================
