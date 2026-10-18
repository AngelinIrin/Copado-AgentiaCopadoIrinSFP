@echo off
echo ========================================================================
echo   [Copado Agentia] Running ReleaseGuard Pre-Flight Quality Gate
echo ========================================================================
agentia releaseguard assess --ai
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ReleaseGuard Gate] QUALITY GATE FAILED: Blocker detected. Halting submission.
    exit /b %ERRORLEVEL%
)

echo.
echo [ReleaseGuard Gate] QUALITY GATE APPROVED: Release readiness verified.
exit /b 0
