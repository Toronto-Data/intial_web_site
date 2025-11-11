# 🚀 Quick Start - Deploy to GitHub Pages

## Deploy in 5 Minutes

```bash
# Step 1: Initialize git
git init

# Step 2: Add all files
git add .

# Step 3: Commit
git commit -m "Initial commit: Toronto AI and Data website"

# Step 4: Create GitHub repo and add remote (replace with your details)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git

# Step 5: Push
git branch -M main
git push -u origin main
```

## Enable GitHub Pages

1. Go to your repo on GitHub
2. Click **Settings** → **Pages**
3. Under "Build and deployment":
   - Source: **Deploy from a branch**
   - Branch: **gh-pages**
   - Folder: **/ (root)**
4. Click **Save**

## Your Site Will Be Live At

```
https://YOUR_USERNAME.github.io/YOUR_REPO/
```

Wait 2-3 minutes for first deployment.

---

## What Happens Automatically

✅ GitHub Actions workflow builds your site  
✅ Deploys to `gh-pages` branch  
✅ Makes it available on GitHub Pages  
✅ Updates on every push to `main`  

---

## Before You Deploy

**Add your branding**:
- Place `logo.png` in `docs/assets/`
- Place `favicon.png` in `docs/assets/`

**Update site URL** in `mkdocs.yml`:
```yaml
site_url: https://YOUR_USERNAME.github.io/YOUR_REPO/
```

---

## Need More Help?

- Detailed guide: `GITHUB_PAGES_SETUP.md`
- Deployment options: `DEPLOY.md`
- Full summary: `DEPLOYMENT_READY.md`

---

**That's it! Your site will be live in minutes.** 🎉

