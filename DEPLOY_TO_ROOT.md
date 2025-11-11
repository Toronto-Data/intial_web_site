# Deploy to Root Domain (toronto-data.github.io)

## Important: Repository Configuration Required

To deploy to `https://toronto-data.github.io/` (instead of `/intial_web_site/`), you have TWO options:

---

## Option 1: Rename Repository (Recommended)

### Steps:

1. **Go to GitHub repository settings:**
   - https://github.com/Toronto-Data/intial_web_site/settings

2. **Rename the repository:**
   - Current name: `intial_web_site`
   - New name: `Toronto-Data.github.io`
   - Click **Rename**

3. **Update your local git remote:**
   ```bash
   cd /Users/thomasseeber/.cursor/worktrees/intial_web_site/Bn6zG
   git remote set-url origin https://github.com/Toronto-Data/Toronto-Data.github.io.git
   ```

4. **Deploy to gh-pages:**
   ```bash
   mkdocs gh-deploy --force --clean
   ```

5. **Configure GitHub Pages:**
   - Settings → Pages
   - Source: Deploy from branch `gh-pages`
   - Your site will be at: `https://toronto-data.github.io/`

---

## Option 2: Keep Current Repo, Use Organization Site

If `Toronto-Data` is an organization (not a user), you can use the current repo with different settings:

### Steps:

1. **Configure GitHub Pages to serve from `main` branch:**
   - Go to: https://github.com/Toronto-Data/intial_web_site/settings/pages
   - Source: Deploy from a branch
   - Branch: `main`
   - Folder: `/docs`
   - Save

2. **Problem**: This serves markdown, not HTML. GitHub Pages won't build MkDocs automatically.

3. **Solution**: Use GitHub Actions to build and commit to `main`:

---

## Option 3: Deploy Built Site to Main Branch (Advanced)

**Warning**: This overwrites your source files with built HTML.

### Create Separate Repos:

1. **Source repo** (keep current): `intial_web_site` - stores markdown source
2. **Site repo** (new): `Toronto-Data.github.io` - stores built HTML

### Deploy Process:

```bash
# In your source repo
cd /Users/thomasseeber/.cursor/worktrees/intial_web_site/Bn6zG

# Build the site
mkdocs build --clean

# Clone the site repo
cd ..
git clone https://github.com/Toronto-Data/Toronto-Data.github.io.git

# Copy built files
cp -r intial_web_site/site/* Toronto-Data.github.io/

# Commit and push
cd Toronto-Data.github.io
git add .
git commit -m "Deploy Toronto AI and Data website"
git push origin main --force
```

---

## RECOMMENDED APPROACH

**Use Option 1** - Rename the repository to `Toronto-Data.github.io`:

1. Simplest setup
2. Standard GitHub Pages workflow
3. Clear separation between source (gh-pages) and built site
4. Automatic deployment via GitHub Actions

After renaming, your site will be at:
```
https://toronto-data.github.io/
```

---

## Current Configuration

I've already updated `site_url` to:
```yaml
site_url: https://toronto-data.github.io/
```

**Next steps:**
1. Choose an option above
2. Follow the steps
3. Deploy

---

**Need help?** Let me know which option you prefer and I can guide you through it.
