# GitHub Setup Instructions

## Quick Setup (Windows)

1. **Install Git** (if not already installed):
   - Download from: https://git-scm.com/download/win
   - Install with default settings
   - Restart your terminal after installation

2. **Double-click `push-to-github.bat`** to automatically push your code

## Manual Setup

### Step 1: Initialize Git Repository

```bash
git init
```

### Step 2: Add Remote Repository

```bash
git remote add origin https://github.com/kamanesh24/congenial-palm-tree.git
```

### Step 3: Add All Files

```bash
git add .
```

### Step 4: Commit Changes

```bash
git commit -m "Initial commit: YRCS PSGTECH Blood Donation Management System"
```

### Step 5: Set Main Branch

```bash
git branch -M main
```

### Step 6: Push to GitHub

```bash
git push -u origin main
```

You will be prompted for your GitHub username and password (or personal access token).

## Using Personal Access Token

If you're using 2FA or having authentication issues:

1. Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate a new token with `repo` permissions
3. Use the token as your password when pushing

## Troubleshooting

### If you get "remote origin already exists":
```bash
git remote remove origin
git remote add origin https://github.com/kamanesh24/congenial-palm-tree.git
```

### If you get authentication errors:
- Use a Personal Access Token instead of password
- Make sure you have write access to the repository

### If you need to update existing repository:
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

