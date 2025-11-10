@echo off
echo ========================================
echo YRCS PSGTECH - Push to GitHub
echo ========================================
echo.

REM Check if git is installed
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Step 1: Initializing Git repository...
git init

echo.
echo Step 2: Adding remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/kamanesh24/congenial-palm-tree.git

echo.
echo Step 3: Adding all files...
git add .

echo.
echo Step 4: Committing changes...
git commit -m "Initial commit: YRCS PSGTECH Blood Donation Management System"

echo.
echo Step 5: Setting main branch...
git branch -M main

echo.
echo Step 6: Pushing to GitHub...
echo Please enter your GitHub credentials when prompted.
git push -u origin main

echo.
echo ========================================
echo Done! Your code has been pushed to GitHub.
echo ========================================
echo.
pause

