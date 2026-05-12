@echo off
REM =========================================================================
REM KnowledgeSynthesizer — Install Script
REM Installs to OpenCode configuration and initializes Git repo
REM =========================================================================

setlocal enabledelayedexpansion

set "KS_DIR=%~dp0"
set "OPENCODE_DIR=%USERPROFILE%\.config\opencode"
set "AGENT_TARGET=%OPENCODE_DIR%\agent\knowledge-synthesizer"
set "COMMAND_TARGET=%OPENCODE_DIR%\command"
set "CONTEXT_TARGET=%OPENCODE_DIR%\context\knowledge"
set "SKILLS_TARGET=%OPENCODE_DIR%\skills\knowledge-synthesizer"

echo.
echo ============================================================
echo  KnowledgeSynthesizer — Installation
echo ============================================================
echo.

REM --- Step 1: Create target directories ---
echo [1/5] Creating directories...
if not exist "%AGENT_TARGET%" mkdir "%AGENT_TARGET%"
if not exist "%CONTEXT_TARGET%" mkdir "%CONTEXT_TARGET%"
if not exist "%CONTEXT_TARGET%\concepts" mkdir "%CONTEXT_TARGET%\concepts"
if not exist "%CONTEXT_TARGET%\guides" mkdir "%CONTEXT_TARGET%\guides"
if not exist "%CONTEXT_TARGET%\lookup" mkdir "%CONTEXT_TARGET%\lookup"
if not exist "%CONTEXT_TARGET%\examples" mkdir "%CONTEXT_TARGET%\examples"
if not exist "%CONTEXT_TARGET%\errors" mkdir "%CONTEXT_TARGET%\errors"
echo   Directories created.

REM --- Step 2: Install agent file ---
echo [2/5] Installing agent file...
copy /Y "%KS_DIR%agent\knowledge-synthesizer.md" "%AGENT_TARGET%\" >nul 2>&1
if %errorlevel% equ 0 (echo   Agent installed) else (echo   [WARNING] Agent copy failed)

REM --- Step 3: Install command file ---
echo [3/5] Installing command file...
copy /Y "%KS_DIR%command\knowledge.md" "%COMMAND_TARGET%\" >nul 2>&1
if %errorlevel% equ 0 (echo   Command installed) else (echo   [WARNING] Command copy failed)

REM --- Step 4: Install context files ---
echo [4/5] Installing context files...
xcopy /E /Y "%KS_DIR%context\*" "%CONTEXT_TARGET%\" >nul 2>&1
echo   Context files installed.

REM --- Step 5: Verify installation ---
echo [5/5] Verifying installation...
set VERIFY_OK=1
if not exist "%AGENT_TARGET%\knowledge-synthesizer.md" set VERIFY_OK=0
if not exist "%COMMAND_TARGET%\knowledge.md" set VERIFY_OK=0
if not exist "%CONTEXT_TARGET%\navigation.md" set VERIFY_OK=0

if %VERIFY_OK% equ 1 (
    echo.
    echo ============================================================
    echo  ✅ KnowledgeSynthesizer installed successfully!
    echo ============================================================
    echo.
    echo  Installed components:
    echo    Agent:   %AGENT_TARGET%\knowledge-synthesizer.md
    echo    Command: %COMMAND_TARGET%\knowledge.md
    echo    Context: %CONTEXT_TARGET%\ (navigation.md + subdirectories)
    echo.
    echo  Usage: /knowledge {topic} @{depth} @{perspective}
    echo.
    echo  Run /knowledge help for full documentation.
) else (
    echo.
    echo  ❌ Installation incomplete. Missing files.
    echo  Try running as Administrator.
)

echo.
echo Done.
pause
