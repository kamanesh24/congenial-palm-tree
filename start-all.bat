@echo off
echo Starting YRCS PSGTECH Blood Donation System...
echo.
echo Starting Server in new window...
start "YRCS Server" cmd /k "cd server && node index.js"
timeout /t 3 /nobreak >nul
echo Starting Client in new window...
start "YRCS Client" cmd /k "cd client && npm start"
echo.
echo Both servers are starting in separate windows.
echo Please wait for them to fully load.
pause

