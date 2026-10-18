@echo off
REM ========================================================================
REM   Copado Agentia Local Quality Gate powered by ReleaseGuard
REM ========================================================================
REM   Policy:
REM     - FAIL blocks progression (exit code 1)
REM     - WARN / UNKNOWN are advisory (exit code 0)
REM     - Use --strict to block on warnings as well
REM ========================================================================

echo Running ReleaseGuard Pre-Flight Quality Gate Assessment (Strict Mode)...
agentia releaseguard assess --ai --strict
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ReleaseGuard Gate] QUALITY GATE FAILED: Blocker detected. Halting promotion.
    exit /b %ERRORLEVEL%
)

echo.
echo [ReleaseGuard Gate] QUALITY GATE PASSED: All pre-flight checks approved.
exit /b 0
