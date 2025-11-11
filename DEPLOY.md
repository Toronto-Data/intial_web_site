# Deployment Guide - Toronto AI and Data Website

## Pre-Deployment Checklist

Before deploying, ensure:

- [ ] Logo and favicon added to `docs/assets/`
- [ ] All content reviewed and approved
- [ ] Links tested locally with `mkdocs serve`
- [ ] Build passes with `mkdocs build --strict`
- [ ] Custom domain (if applicable) is ready

## Deployment Options

### Option 1: GitHub Pages (Recommended)

**Setup:**

1. Push your code to a GitHub repository
2. Ensure you're on the main branch

**Deploy:**

```bash
mkdocs gh-deploy
```

This command:
- Builds the site
- Creates/updates the `gh-pages` branch
- Pushes the static site to GitHub Pages

**Configure GitHub:**

1. Go to repository Settings → Pages
2. Source: Deploy from branch `gh-pages`
3. Folder: `/ (root)`
4. Save

Your site will be live at: `https://[username].github.io/[repository]/`

**Custom Domain:**

1. Add `CNAME` file to `docs/` directory with your domain
2. Update `mkdocs.yml`: `site_url: https://yourdomain.com`
3. Configure DNS with your domain provider

---

### Option 2: Netlify

**Setup via GitHub Integration:**

1. Sign up at [netlify.com](https://netlify.com)
2. Click "Add new site" → "Import an existing project"
3. Connect to GitHub and select your repository

**Build Settings:**

- **Build command**: `mkdocs build`
- **Publish directory**: `site`
- **Branch to deploy**: `main`

**Environment (Optional):**

```
PYTHON_VERSION=3.11
```

**Custom Domain:**

1. Go to Site settings → Domain management
2. Add custom domain
3. Configure DNS (Netlify provides instructions)

**Continuous Deployment:**

Every push to `main` branch automatically rebuilds the site.

---

### Option 3: Vercel

**Setup via GitHub Integration:**

1. Sign up at [vercel.com](https://vercel.com)
2. Click "Add New" → "Project"
3. Import your GitHub repository

**Build Settings:**

- **Framework Preset**: Other
- **Build Command**: `mkdocs build`
- **Output Directory**: `site`
- **Install Command**: `pip install -r requirements.txt`

**Environment Variables (if needed):**

```
PYTHON_VERSION=3.11
```

**Custom Domain:**

1. Go to Project Settings → Domains
2. Add your domain
3. Follow DNS configuration instructions

---

### Option 4: AWS S3 + CloudFront

**Build the site:**

```bash
mkdocs build
```

**Upload to S3:**

```bash
aws s3 sync site/ s3://your-bucket-name --delete
```

**Configure S3 Bucket:**

1. Enable static website hosting
2. Set index document: `index.html`
3. Set error document: `404.html`
4. Update bucket policy for public read access

**CloudFront (Optional):**

1. Create CloudFront distribution
2. Point to S3 bucket
3. Enable HTTPS
4. Configure custom domain (if applicable)

---

### Option 5: Azure Static Web Apps

**Install Azure CLI:**

```bash
# Install Azure CLI if not already installed
# Visit: https://docs.microsoft.com/cli/azure/install-azure-cli
```

**Build the site:**

```bash
mkdocs build
```

**Deploy:**

```bash
az staticwebapp create \
  --name toronto-ai-data \
  --resource-group your-resource-group \
  --source ./site \
  --location "Central US" \
  --branch main \
  --token $GITHUB_TOKEN
```

---

### Option 6: Custom VPS/Server

**Build the site:**

```bash
mkdocs build
```

**Upload files:**

Option A - Using SCP:
```bash
scp -r site/* user@your-server.com:/var/www/html/
```

Option B - Using rsync:
```bash
rsync -avz --delete site/ user@your-server.com:/var/www/html/
```

**Web Server Configuration:**

**Nginx:**

```nginx
server {
    listen 80;
    server_name torontoaidata.com www.torontoaidata.com;
    
    root /var/www/html;
    index index.html;
    
    location / {
        try_files $uri $uri/ =404;
    }
    
    # Enable gzip compression
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
}
```

**Apache (.htaccess):**

```apache
# Enable compression
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css text/javascript application/javascript
</IfModule>

# Browser caching
<IfModule mod_expires.c>
    ExpiresActive On
    ExpiresByType image/jpg "access plus 1 year"
    ExpiresByType image/jpeg "access plus 1 year"
    ExpiresByType image/gif "access plus 1 year"
    ExpiresByType image/png "access plus 1 year"
    ExpiresByType text/css "access plus 1 month"
    ExpiresByType application/javascript "access plus 1 month"
</IfModule>
```

---

## Post-Deployment

### 1. Verify Deployment

- [ ] Visit your site URL
- [ ] Check all navigation links
- [ ] Test responsive design (mobile, tablet, desktop)
- [ ] Verify search functionality
- [ ] Check that custom CSS is applied
- [ ] Test page load speed

### 2. Configure Analytics (Optional)

Add Google Analytics or other tracking to `mkdocs.yml`:

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX
```

### 3. Set Up Monitoring

Consider setting up:
- Uptime monitoring (e.g., UptimeRobot, Pingdom)
- Error tracking (e.g., Sentry)
- Performance monitoring (e.g., Google PageSpeed Insights)

### 4. SEO Configuration

**Verify:**
- [ ] Submit sitemap to Google Search Console: `https://yourdomain.com/sitemap.xml`
- [ ] Add to Bing Webmaster Tools
- [ ] Configure robots.txt if needed
- [ ] Set up social media preview images

**Add to mkdocs.yml:**

```yaml
extra:
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/yourorg
    - icon: fontawesome/brands/twitter
      link: https://twitter.com/yourhandle
    - icon: fontawesome/brands/linkedin
      link: https://linkedin.com/company/yourcompany
```

---

## Continuous Integration/Deployment

### GitHub Actions Example

Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy MkDocs

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.11'
      
      - name: Install dependencies
        run: |
          pip install -r requirements.txt
      
      - name: Build and deploy
        run: |
          mkdocs gh-deploy --force
```

---

## Troubleshooting

### Build Errors

**Issue**: `Config file 'mkdocs.yml' does not exist`

**Solution**: Ensure you're in the correct directory

```bash
cd /Users/thomasseeber/.cursor/worktrees/intial_web_site/Bn6zG
```

### Missing Dependencies

**Issue**: `ModuleNotFoundError: No module named 'material'`

**Solution**: Reinstall dependencies

```bash
pip install -r requirements.txt
```

### 404 Errors After Deployment

**Issue**: Links showing 404 errors

**Solution**: Check that `site_url` in `mkdocs.yml` matches your deployed URL

### Custom CSS Not Loading

**Issue**: Custom styles not applied

**Solution**: 
1. Verify `custom.css` is in `docs/stylesheets/`
2. Check `extra_css` in `mkdocs.yml`
3. Clear browser cache and rebuild

---

## Domain Configuration Examples

### Cloudflare DNS

```
Type: CNAME
Name: @
Content: yourusername.github.io
Proxy: Enabled (Orange cloud)
```

### Namecheap DNS

```
Type: CNAME
Host: @
Value: yourusername.github.io
TTL: Automatic
```

### GoDaddy DNS

```
Type: CNAME
Name: @
Value: yourusername.github.io
TTL: 1 Hour
```

---

## Support

For deployment issues:
- MkDocs Documentation: https://www.mkdocs.org/
- Material Theme Docs: https://squidfunk.github.io/mkdocs-material/
- GitHub Issues: [Your Repository Issues URL]

---

**Ready to deploy? Choose your platform and follow the steps above!**

© 2025 Toronto AI and Data

