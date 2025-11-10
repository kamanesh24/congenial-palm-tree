@echo off
echo ========================================
echo Git Configuration Setup
echo ========================================
echo.
echo Please enter your details:
echo.
set /p GIT_NAME="Enter your name (e.g., Kaman): "
set /p GIT_EMAIL="Enter your email (e.g., your-email@example.com): "
echo.
echo Configuring Git...
git config --global user.name "%GIT_NAME%"
git config --global user.email "%GIT_EMAIL%"
echo.
echo Git configured successfully!
echo Name: %GIT_NAME%
echo Email: %GIT_EMAIL%
echo.
echo Now you can run: git commit -m "Your message"
echo.
pause

