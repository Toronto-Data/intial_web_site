# GitHub Pages Deployment Guide

## Quick Deployment

Your Toronto AI and Data website is ready for GitHub Pages! Follow these steps to deploy.

## Option 1: Automatic Deployment (Recommended)

### Step 1: Push to GitHub

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Toronto AI and Data website"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 2: Enable GitHub Actions

The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically:
- Builds the site on every push to `main`
- Deploys to GitHub Pages
- Shows deployment status

**This workflow is already configured and ready to go!**

### Step 3: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Build and deployment":
   - Source: **Deploy from a branch**
   - Branch: **gh-pages** (will be created automatically)
   - Folder: **/ (root)**
4. Click **Save**

### Step 4: Wait for Deployment

- The first deployment takes 2-5 minutes
- Check the **Actions** tab to see progress
- Once complete, your site will be live at:
  ```
  https://YOUR_USERNAME.github.io/YOUR_REPO/
  ```

---

## Option 2: Manual Deployment

If you prefer manual control:

```bash
# Build and deploy in one command
mkdocs gh-deploy

# Or with options
mkdocs gh-deploy --force --clean
```

This command:
1. Builds the site
2. Pushes to `gh-pages` branch
3. Makes it available on GitHub Pages

---

## Updating the Site URL

### If Using Custom Domain

Edit `mkdocs.yml`:

```yaml
site_url: https://yourdomain.com
```

Add a `CNAME` file to `docs/`:

```bash
echo "yourdomain.com" > docs/CNAME
```

Configure DNS with your domain provider:
```
Type: CNAME
Name: @
Value: YOUR_USERNAME.github.io
```

### If Using GitHub Pages Subdomain

Edit `mkdocs.yml`:

```yaml
site_url: https://YOUR_USERNAME.github.io/YOUR_REPO/
```

---

## Troubleshooting

### Site Not Loading

**Problem**: 404 error after deployment

**Solution**: 
1. Check GitHub Pages settings (Settings → Pages)
2. Ensure `gh-pages` branch exists
3. Wait 5-10 minutes for DNS propagation
4. Clear browser cache

### CSS Not Loading

**Problem**: Site loads but has no styling

**Solution**:
1. Check `site_url` in `mkdocs.yml` matches your actual URL
2. Rebuild and redeploy: `mkdocs gh-deploy --force`

### Images Not Displaying

**Problem**: Hero images or other assets missing

**Solution**:
1. Ensure images are in `docs/assets/`
2. Check image paths are relative (e.g., `../assets/image.svg`)
3. Verify images are committed to git
4. Rebuild: `mkdocs build && mkdocs gh-deploy`

### Build Fails in GitHub Actions

**Problem**: Actions workflow shows errors

**Solution**:
1. Check the Actions tab for specific error
2. Verify `requirements.txt` is up to date
3. Test locally: `mkdocs build --strict`
4. Check Python version compatibility

### Old Content Still Showing

**Problem**: Changes not appearing after deployment

**Solution**:
1. Use `mkdocs gh-deploy --force --clean`
2. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
3. Try incognito/private browsing

---

## Pre-Deployment Checklist

Before deploying to production:

- [ ] All content reviewed and proofread
- [ ] Hero images (logo.png, favicon.png) added to `docs/assets/`
- [ ] Site URL configured in `mkdocs.yml`
- [ ] Test locally: `mkdocs serve`
- [ ] Build passes: `mkdocs build --strict`
- [ ] All links tested
- [ ] Accessibility tested (keyboard navigation, screen reader)
- [ ] Mobile responsive tested
- [ ] SEO metadata verified
- [ ] Privacy policy/legal pages added (if needed)

---

## GitHub Pages Features Enabled

### ✅ Custom 404 Page
MkDocs Material automatically generates a 404 page.

### ✅ HTTPS
GitHub Pages provides free HTTPS automatically.

### ✅ SEO
- Sitemap generated (`sitemap.xml`)
- Meta descriptions on all pages
- Proper heading hierarchy
- Semantic HTML

### ✅ Performance
- Static files (fast loading)
- Optimized SVG images
- Minimal CSS/JS
- Global CDN delivery

---

## Monitoring Your Deployment

### GitHub Actions Status

View deployment status at:
```
https://github.com/YOUR_USERNAME/YOUR_REPO/actions
```

### Site Analytics (Optional)

Add Google Analytics to `mkdocs.yml`:

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX
```

---

## Advanced Configuration

### Custom Domain with HTTPS

1. Add `CNAME` file to `docs/` directory
2. Configure DNS:
   ```
   Type: CNAME
   Name: www
   Value: YOUR_USERNAME.github.io
   
   Type: A
   Name: @
   Value: 185.199.108.153
          185.199.109.153
          185.199.110.153
          185.199.111.153
   ```
3. Enable "Enforce HTTPS" in GitHub Pages settings

### Environment-Specific Builds

Create separate configs for staging/production:

```bash
# Development
mkdocs serve

# Staging
mkdocs build -f mkdocs-staging.yml

# Production
mkdocs build -f mkdocs.yml
```

---

## Continuous Deployment Workflow

With the included GitHub Actions workflow:

1. **Make changes** to any markdown file
2. **Commit and push** to main branch
3. **Automatic build** starts within seconds
4. **Deployment** completes in 2-3 minutes
5. **Live site** updates automatically

**No manual deployment needed!**

---

## Security Best Practices

### Secrets Management

Never commit:
- API keys
- Passwords
- Authentication tokens
- Private keys

Use GitHub Secrets for sensitive data:
1. Go to Settings → Secrets and variables → Actions
2. Click "New repository secret"
3. Reference in workflow: `${{ secrets.YOUR_SECRET }}`

### Branch Protection

Protect the `main` branch:
1. Settings → Branches
2. Add rule for `main`
3. Enable:
   - Require pull request reviews
   - Require status checks to pass
   - Require branches to be up to date

---

## Cost

GitHub Pages is **completely free** for:
- Public repositories (unlimited)
- Private repositories (with limits)

**Bandwidth**: 100GB/month (soft limit)
**Build time**: 10 minutes per build
**Storage**: 1GB

For the Toronto AI and Data site, this is more than sufficient.

---

## Support Resources

- **GitHub Pages Docs**: https://docs.github.com/pages
- **MkDocs Docs**: https://www.mkdocs.org/
- **Material Theme Docs**: https://squidfunk.github.io/mkdocs-material/
- **This Project's Docs**: See SETUP.md, DEPLOY.md

---

## Quick Reference Commands

```bash
# Local development
mkdocs serve

# Build locally
mkdocs build

# Deploy to GitHub Pages (manual)
mkdocs gh-deploy

# Force rebuild and deploy
mkdocs gh-deploy --force --clean

# Test build strictly
mkdocs build --strict

# Check MkDocs version
mkdocs --version

# Update dependencies
pip install -r requirements.txt --upgrade
```

---

## Post-Deployment Tasks

After your site is live:

1. **Test Everything**
   - Visit all pages
   - Click all links
   - Test on mobile devices
   - Check different browsers

2. **Submit to Search Engines**
   - Google Search Console
   - Bing Webmaster Tools

3. **Share Your Site**
   - Update social media links
   - Add to LinkedIn
   - Share with partners

4. **Monitor Performance**
   - Set up analytics
   - Monitor uptime
   - Check load times

5. **Regular Maintenance**
   - Keep content updated
   - Add new blog posts
   - Update dependencies quarterly

---

## Success! 🎉

Your Toronto AI and Data website is now live on GitHub Pages!

**Next Steps**:
1. Add your logo and favicon to `docs/assets/`
2. Customize any remaining content
3. Share your site with the world!

---

**Built with MkDocs Material | Deployed on GitHub Pages | © 2025 Toronto AI and Data**

