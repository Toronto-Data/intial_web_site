# 🔧 GitHub Pages Troubleshooting Guide

## Problem: Markdown Files Not Converting to HTML

If you're seeing raw markdown files or the site isn't displaying correctly, here's how to fix it.

---

## ⚡ Quick Fix (Most Common Solution)

### Step 1: Deploy Using MkDocs Command

Run this command locally to properly deploy:

```bash
cd /Users/thomasseeber/.cursor/worktrees/intial_web_site/Bn6zG
mkdocs gh-deploy --force --clean
```

This will:
- Build the HTML from markdown
- Create/update the `gh-pages` branch
- Push the built site to GitHub

### Step 2: Configure GitHub Pages

1. Go to: https://github.com/Toronto-Data/intial_web_site/settings/pages
2. Under "Build and deployment":
   - **Source**: Deploy from a branch
   - **Branch**: `gh-pages` (not `main`)
   - **Folder**: `/ (root)`
3. Click **Save**

### Step 3: Wait and Check

- Wait 2-3 minutes for deployment
- Visit: https://toronto-data.github.io/intial_web_site/
- Clear your browser cache (Ctrl+Shift+R or Cmd+Shift+R)

---

## 🔍 Understanding the Issue

### What's Happening

**Problem**: GitHub Pages is serving files from the `main` branch's `docs/` folder (markdown files) instead of the `gh-pages` branch (HTML files).

**Solution**: We need to ensure GitHub Pages serves from the `gh-pages` branch where the built HTML lives.

### How MkDocs Works with GitHub Pages

```
Local Development:
docs/ (markdown)  →  mkdocs build  →  site/ (HTML)

GitHub Pages Deployment:
site/ (HTML)  →  pushed to gh-pages branch  →  served by GitHub Pages
```

---

## 🛠️ Complete Fix Process

### Option 1: Manual Deployment (Recommended for First Time)

```bash
# 1. Make sure you're on the main branch
git checkout main

# 2. Ensure all changes are committed
git add .
git commit -m "Prepare for GitHub Pages deployment"
git push origin main

# 3. Deploy to GitHub Pages
mkdocs gh-deploy --force --clean --verbose
```

**What this does**:
- Builds the site locally (converts markdown to HTML)
- Creates/updates `gh-pages` branch with HTML files only
- Pushes to GitHub
- GitHub Pages serves the HTML from `gh-pages` branch

### Option 2: Fix GitHub Actions Workflow

If you want automatic deployment, ensure GitHub Actions has the right permissions:

**Step 1**: Go to https://github.com/Toronto-Data/intial_web_site/settings/actions

**Step 2**: Under "Workflow permissions", select:
- ✅ **Read and write permissions**
- ✅ **Allow GitHub Actions to create and approve pull requests**

**Step 3**: Save changes

**Step 4**: Trigger the workflow:
```bash
# Make a small change and push
git commit --allow-empty -m "Trigger GitHub Actions deployment"
git push origin main
```

**Step 5**: Check Actions tab: https://github.com/Toronto-Data/intial_web_site/actions

---

## 📋 Verification Checklist

After deployment, verify:

- [ ] `gh-pages` branch exists in your repository
- [ ] `gh-pages` branch contains HTML files (not markdown)
- [ ] GitHub Pages settings show `gh-pages` branch as source
- [ ] Site loads at https://toronto-data.github.io/intial_web_site/
- [ ] Navigation works (click through pages)
- [ ] Images display correctly
- [ ] CSS/styling is applied

---

## 🐛 Common Issues and Solutions

### Issue 1: 404 Error on GitHub Pages

**Symptoms**: Site shows "404 - File not found"

**Solutions**:

1. **Check gh-pages branch exists**:
   ```bash
   git fetch origin
   git branch -r | grep gh-pages
   ```
   Should show: `origin/gh-pages`

2. **Verify GitHub Pages settings**:
   - Branch: `gh-pages` (not `main`)
   - Folder: `/ (root)` (not `/docs`)

3. **Wait longer**: First deployment can take 5-10 minutes

### Issue 2: Seeing Markdown Instead of HTML

**Symptoms**: Raw markdown text displays in browser

**Cause**: GitHub Pages is serving from `main` branch's `docs/` folder

**Solution**:
```bash
# Redeploy to gh-pages branch
mkdocs gh-deploy --force --clean

# Then update GitHub Pages settings to use gh-pages branch
```

### Issue 3: CSS Not Loading

**Symptoms**: Site displays but no styling

**Solutions**:

1. **Check site_url in mkdocs.yml**:
   ```yaml
   site_url: https://toronto-data.github.io/intial_web_site/
   ```

2. **Rebuild and redeploy**:
   ```bash
   mkdocs gh-deploy --force --clean
   ```

3. **Clear browser cache**: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)

### Issue 4: GitHub Actions Fails

**Symptoms**: Actions tab shows failed workflow

**Check**:

1. **View the error in Actions tab**
2. **Common fixes**:
   ```bash
   # Ensure requirements.txt is correct
   cat requirements.txt
   
   # Should contain:
   # mkdocs>=1.5.3
   # mkdocs-material>=9.5.0
   # mkdocs-blogging-plugin>=2.2.0
   ```

3. **Check permissions** (Settings → Actions → Workflow permissions)

### Issue 5: Links Don't Work

**Symptoms**: Clicking links gives 404

**Solution**: Update `site_url` in `mkdocs.yml`:

```yaml
# If using GitHub Pages subdomain
site_url: https://toronto-data.github.io/intial_web_site/

# If using custom domain
site_url: https://yourdomain.com/
```

Then redeploy:
```bash
mkdocs gh-deploy --force --clean
```

---

## 🔐 Permissions Check

### GitHub Actions Permissions

Go to: https://github.com/Toronto-Data/intial_web_site/settings/actions

Ensure:
- ✅ Actions permissions: Allow all actions
- ✅ Workflow permissions: Read and write permissions
- ✅ Allow GitHub Actions to create pull requests

### Repository Permissions

Go to: https://github.com/Toronto-Data/intial_web_site/settings

Ensure:
- ✅ GitHub Pages is enabled
- ✅ You have admin access to the repository

---

## 🎯 Step-by-Step Resolution

### If Nothing Is Working

**Start Fresh**:

```bash
# 1. Delete gh-pages branch (if exists)
git push origin --delete gh-pages

# 2. Clean local build
rm -rf site

# 3. Fresh build and deploy
mkdocs build --clean
mkdocs gh-deploy --force --clean --verbose

# 4. Configure GitHub Pages
# Go to Settings → Pages
# Source: gh-pages branch, / (root)

# 5. Wait 5 minutes

# 6. Visit site
# https://toronto-data.github.io/intial_web_site/
```

---

## 📊 Expected Repository Structure

After successful deployment, your repository should have:

**`main` branch**:
```
├── docs/           (markdown source)
├── mkdocs.yml
├── requirements.txt
└── .github/workflows/deploy.yml
```

**`gh-pages` branch** (auto-created):
```
├── index.html
├── hackathons/index.html
├── blog/index.html
├── assets/
├── stylesheets/
└── [all built HTML files]
```

**GitHub Pages serves**: `gh-pages` branch → HTML to visitors

---

## ✅ Correct Configuration

### mkdocs.yml

```yaml
site_name: Toronto AI and Data
site_url: https://toronto-data.github.io/intial_web_site/
# ... rest of config
```

### GitHub Pages Settings

- **Source**: Deploy from a branch
- **Branch**: gh-pages
- **Folder**: / (root)

### Repository URL

Your site will be live at:
```
https://toronto-data.github.io/intial_web_site/
```

---

## 🧪 Test Locally First

Before deploying, always test locally:

```bash
# Serve locally
mkdocs serve

# Visit http://127.0.0.1:8000
# Test all pages
# Verify everything works

# Then deploy
mkdocs gh-deploy --force --clean
```

---

## 📞 Still Having Issues?

### Debug Commands

```bash
# Check if gh-pages branch exists
git fetch origin
git branch -r

# Check what's in gh-pages branch
git checkout gh-pages
ls -la
# Should see HTML files, not markdown

# Return to main
git checkout main

# Check GitHub Pages status
# Go to: https://github.com/Toronto-Data/intial_web_site/deployments
```

### What to Check

1. ✅ Does `gh-pages` branch exist?
2. ✅ Does `gh-pages` branch contain HTML files?
3. ✅ Is GitHub Pages configured to use `gh-pages` branch?
4. ✅ Have you waited 5-10 minutes after deployment?
5. ✅ Have you cleared your browser cache?
6. ✅ Are you using the correct URL?

---

## 🚀 Working Deployment Process

### The Correct Flow

```bash
# 1. Work on main branch
git checkout main

# 2. Make changes to docs/*.md files
# (Edit markdown files)

# 3. Test locally
mkdocs serve

# 4. Commit changes
git add .
git commit -m "Update content"
git push origin main

# 5. Deploy to GitHub Pages
mkdocs gh-deploy --force --clean

# 6. Done! Site updates in 2-3 minutes
```

---

## 💡 Pro Tips

### Tip 1: Use the Command Line Deploy

Don't rely on GitHub Actions for initial deployment. Use:
```bash
mkdocs gh-deploy --force --clean
```

### Tip 2: Check the gh-pages Branch

```bash
git checkout gh-pages
ls
# You should see: index.html, assets/, etc. (NOT docs/)
```

### Tip 3: Clear Cache Aggressively

After deployment:
- Close browser completely
- Reopen
- Visit site in incognito/private mode
- Hard refresh: Ctrl+Shift+R or Cmd+Shift+R

### Tip 4: Monitor Deployments

Check: https://github.com/Toronto-Data/intial_web_site/deployments

You'll see deployment status and any errors.

---

## ✨ Success Indicators

You'll know it's working when:

✅ Site loads at https://toronto-data.github.io/intial_web_site/
✅ You see styled HTML (not markdown text)
✅ Navigation works
✅ Images display
✅ Search works
✅ All pages are accessible

---

## 🎯 TL;DR - Quick Fix

```bash
# Run this command
mkdocs gh-deploy --force --clean

# Then go to GitHub:
# Settings → Pages → Source: gh-pages branch

# Wait 3 minutes, clear cache, visit:
# https://toronto-data.github.io/intial_web_site/
```

---

**Need more help?** Check the Actions tab for error messages or verify your GitHub Pages settings.

© 2025 Toronto AI and Data

