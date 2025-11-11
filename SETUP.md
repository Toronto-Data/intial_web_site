# Toronto AI and Data Website - Setup Guide

## Overview

This is a static website built with MkDocs Material for Toronto AI and Data. The site features a clean, modern design with a golden-age comic book aesthetic and hackathon energy.

## Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

## Installation

### 1. Install Dependencies

```bash
pip install -r requirements.txt
```

Or install manually:

```bash
pip install mkdocs mkdocs-material
```

### 2. Add Logo and Favicon

Place your logo and favicon files in the `docs/assets/` directory:

- `docs/assets/logo.png` - Your site logo (recommended: 128x128px or larger)
- `docs/assets/favicon.png` - Your favicon (recommended: 32x32px or 64x64px)

## Development

### Run Local Development Server

```bash
mkdocs serve
```

The site will be available at `http://127.0.0.1:8000/`

The development server includes:
- Live reload on file changes
- Automatic navigation updates
- Search functionality

### Build Static Site

```bash
mkdocs build
```

This creates a `site/` directory with all static files ready for deployment.

## Project Structure

```
.
├── mkdocs.yml                 # Main configuration file
├── requirements.txt           # Python dependencies
├── docs/
│   ├── index.md              # Home page
│   ├── hackathons.md         # AI Hackathons page
│   ├── resources.md          # Resources page
│   ├── about.md              # About Us page
│   ├── partners/
│   │   ├── wuji-xuan.md      # Partner profile
│   │   └── becoming-partner.md
│   ├── blog/
│   │   └── index.md          # Blog landing page
│   ├── stylesheets/
│   │   └── custom.css        # Custom brand styling
│   └── assets/
│       ├── logo.png          # Site logo
│       └── favicon.png       # Site favicon
└── site/                     # Generated static files (after build)
```

## Brand Colors

The site uses Toronto AI and Data's brand colors:

- **Primary (Teal)**: `#00A896` - Headers, primary actions
- **Accent (Coral)**: `#FF6F61` - Buttons, links, callouts
- **Highlight (Gold)**: `#FFD23F` - Emphasis, hover states
- **Text (Black)**: `#0D0D0D` - Body text
- **Background (White)**: `#FEFEFE` - Page background

## Typography

- **Headings**: Montserrat (bold, sans-serif)
- **Body**: Roboto (regular, sans-serif)

## Deployment Options

### GitHub Pages

```bash
mkdocs gh-deploy
```

### Netlify

1. Connect your GitHub repository to Netlify
2. Build command: `mkdocs build`
3. Publish directory: `site`

### Vercel

1. Connect your GitHub repository to Vercel
2. Build command: `mkdocs build`
3. Output directory: `site`

### Custom Hosting

Build the site and upload the contents of the `site/` directory to your web server.

## Navigation Structure

- Home
- AI Hackathons
- Strategic Partners
  - Wuji Xuan Life Wellness
  - Becoming a Partner
- Resources
- Blog
- About Us

## Content Guidelines

All pages include metadata fields:

```yaml
---
title: [Page Title]
description: [SEO-friendly description]
author: Toronto AI and Data
date: [YYYY-MM-DD]
tags: [relevant, tags]
---
```

### Tone of Voice

- Confident, clear, encouraging
- Mentor-focused and strategic
- Slightly cinematic (heroic flavor)
- Emphasizes ROI and real outcomes
- Avoids hype, sarcasm, or dystopian themes

## Troubleshooting

### Dependencies Not Installing

Make sure you have Python 3.8+ and pip updated:

```bash
python --version
pip install --upgrade pip
```

### Site Not Loading

Check that you're in the correct directory and that `mkdocs.yml` exists:

```bash
ls mkdocs.yml
```

### Custom CSS Not Applying

Verify that `docs/stylesheets/custom.css` exists and is referenced in `mkdocs.yml`:

```yaml
extra_css:
  - stylesheets/custom.css
```

## Support

For questions or issues, contact:
- Email: support@torontoaidata.com
- GitHub: [Your Repository URL]

## License

© 2025 Toronto AI and Data. All rights reserved.

