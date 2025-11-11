# 🔧 Rename Repository to Deploy at Root Domain

## Why Rename?

To deploy your site at `https://toronto-data.github.io/` (root domain) instead of `https://toronto-data.github.io/intial_web_site/`, the repository **must** be named `Toronto-Data.github.io`.

This is a GitHub Pages requirement for organization/user sites.

---

## Step-by-Step: Rename Repository on GitHub

### 1. Go to Repository Settings

Visit: https://github.com/Toronto-Data/intial_web_site/settings

### 2. Rename the Repository

Scroll down to the **"Danger Zone"** section at the bottom.

Click **"Rename"** or find the **"Repository name"** field at the top.

**Change**:
- From: `intial_web_site`
- To: `Toronto-Data.github.io`

Click **"Rename"** button to confirm.

### 3. Update Local Git Remote

Run this command in your terminal:

```bash
cd /Users/thomasseeber/.cursor/worktrees/intial_web_site/Bn6zG

git remote set-url origin https://github.com/Toronto-Data/Toronto-Data.github.io.git
```

Verify it worked:
```bash
git remote -v
```

Should show:
```
origin  https://github.com/Toronto-Data/Toronto-Data.github.io.git (fetch)
origin  https://github.com/Toronto-Data/Toronto-Data.github.io.git (push)
```

### 4. Deploy to GitHub Pages

```bash
mkdocs gh-deploy --force --clean --verbose
```

### 5. Verify GitHub Pages Settings

Go to: https://github.com/Toronto-Data/Toronto-Data.github.io/settings/pages

Ensure:
- **Source**: Deploy from a branch
- **Branch**: `gh-pages`
- **Folder**: `/ (root)`

### 6. Visit Your Site

Your site will be live at:
```
https://toronto-data.github.io/
```

Wait 2-3 minutes, then visit the URL and clear your cache.

---

## ✅ After Renaming

The site URL will be:
- ❌ NOT: `https://toronto-data.github.io/intial_web_site/`
- ✅ YES: `https://toronto-data.github.io/`

All links and assets will work correctly because `site_url` in `mkdocs.yml` has been updated to match.

---

## 🔐 Important Notes

- **Repository name** determines the GitHub Pages URL
- **Organization sites** (like `Toronto-Data.github.io`) serve at root
- **Project sites** (like `intial_web_site`) serve at `/project-name/`
- Renaming the repository on GitHub **does not** break anything
- All commits, issues, and history are preserved

---

## Alternative: Don't Rename (Keep Subdirectory)

If you prefer to keep the URL as `https://toronto-data.github.io/intial_web_site/`:

1. Don't rename the repository
2. Change `site_url` in `mkdocs.yml` back to:
   ```yaml
   site_url: https://toronto-data.github.io/intial_web_site/
   ```
3. Deploy: `mkdocs gh-deploy --force --clean`

---

**Ready to rename?** Follow steps 1-6 above, then your site will be at the root domain!

