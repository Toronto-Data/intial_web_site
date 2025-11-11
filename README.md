# Toronto AI and Data Website

[![MkDocs Material](https://img.shields.io/badge/MkDocs-Material-526CFE?style=flat&logo=materialformkdocs)](https://squidfunk.github.io/mkdocs-material/)
[![Python 3.8+](https://img.shields.io/badge/Python-3.8%2B-blue?style=flat&logo=python)](https://www.python.org/)

A modern, static website built with MkDocs Material for **Toronto AI and Data** - an AI development studio that builds innovative SaaS plugins and runs transformative hackathons.

## 🚀 Quick Start

### Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

### Installation & Setup

```bash
# Install dependencies
pip install -r requirements.txt

# Serve locally (with live reload)
mkdocs serve

# Build for production
mkdocs build
```

Visit `http://127.0.0.1:8000` to view the site locally.

## 📁 Project Structure

```
.
├── mkdocs.yml                 # Main configuration
├── requirements.txt           # Python dependencies
├── SETUP.md                   # Detailed setup guide
├── ACCESSIBILITY.md           # WCAG 2.2 compliance documentation
├── HERO_IMAGES.md            # Hero image documentation
├── BLOG_GUIDE.md             # Blog post creation guide
├── docs/
│   ├── index.md              # Home page
│   ├── hackathons.md         # AI Hackathons
│   ├── resources.md          # Developer resources
│   ├── about.md              # About the team
│   ├── partners/             # Strategic partners section
│   │   ├── wuji-xuan.md
│   │   └── becoming-partner.md
│   ├── blog/                 # Auto-populating blog
│   │   ├── index.md          # Blog landing page
│   │   └── [7 blog posts]    # Automatically discovered
│   ├── stylesheets/          # Custom branding
│   │   └── custom.css
│   └── assets/               # Images & media
│       ├── hero-placeholder.svg  # Full hero image with text
│       ├── hero-simple.svg       # Clean hero banner
│       ├── hero-minimal.svg      # Minimal header
│       └── README.md             # Asset documentation
└── site/                     # Generated static files
```

## 🎨 Brand Identity

### Colors

- **Primary (Teal)**: `#00A896` - Headers, primary actions
- **Accent (Coral)**: `#FF6F61` - Buttons, links, badges
- **Highlight (Gold)**: `#FFD23F` - Emphasis, hover states
- **Text (Black)**: `#0D0D0D` - Body text
- **Background (White)**: `#FEFEFE` - Page background

### Typography

- **Headings**: Montserrat (bold, sans-serif)
- **Body**: Roboto (regular, sans-serif)

### Visual Theme

Golden-age comic book aesthetic meets clean modern UI with hackathon energy. Light, bright, and hero-inspired design language.

## 📋 Features

- ✅ **MkDocs Material theme** in light mode
- ✅ **Custom brand colors** and typography
- ✅ **Responsive navigation** with tabs and sections
- ✅ **Blog with visual cards** for articles
- ✅ **SEO-optimized** with metadata on all pages
- ✅ **Search functionality** built-in
- ✅ **Fast static site** generation
- ✅ **Mobile-responsive** design
- ✅ **WCAG 2.2 Level AA accessible** - full accessibility compliance

## 🗺️ Site Navigation

```
├── Home
├── AI Hackathons
├── Strategic Partners
│   ├── Wuji Xuan Life Wellness
│   └── Becoming a Partner
├── Resources
├── Blog
└── About Us
```

## 🚢 Deployment

### GitHub Pages

```bash
mkdocs gh-deploy
```

### Netlify

1. Build command: `mkdocs build`
2. Publish directory: `site`

### Vercel

1. Build command: `mkdocs build`
2. Output directory: `site`

### Other Hosting

Build the site with `mkdocs build` and upload the `site/` directory contents to your web server.

## 📝 Content Guidelines

All pages include metadata:

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
- Slightly cinematic with heroic flavor
- Emphasizes ROI and real outcomes
- Avoids hype, sarcasm, or dystopian themes

## 🛠️ Development

For detailed setup instructions, troubleshooting, and deployment options, see [SETUP.md](SETUP.md).

## ♿ Accessibility

This website is built to comply with [WCAG 2.2 Level AA](https://www.w3.org/WAI/standards-guidelines/wcag/) standards. See [ACCESSIBILITY.md](ACCESSIBILITY.md) for full details on our accessibility compliance, including:

- Color contrast ratios that exceed WCAG requirements
- Keyboard navigation support
- Screen reader compatibility
- Touch target sizing for mobile accessibility
- Reduced motion support for users with vestibular disorders
- Accessible SVG hero images with semantic markup

### Hero Images

Three fully accessible hero images with embedded text have been created in SVG format. See [HERO_IMAGES.md](HERO_IMAGES.md) for complete documentation on the hero images, including:

- **hero-placeholder.svg** - Full-featured hero with comprehensive branding
- **hero-simple.svg** - Clean modern design with focused messaging
- **hero-minimal.svg** - Minimal banner for compact spaces

All images include proper ARIA labels, semantic markup, and meet WCAG 2.2 color contrast requirements.

## 📝 Adding Blog Posts

The blog automatically discovers and lists new posts! Just create a markdown file in `docs/blog/` with proper front matter:

```yaml
---
title: Your Article Title
description: SEO-friendly description
author: Thomas Seeber
date: 2025-01-15
tags: [AI Development, Strategy]
---
```

See [BLOG_GUIDE.md](BLOG_GUIDE.md) for complete instructions on creating blog posts.

## 📦 Dependencies

- `mkdocs>=1.5.3` - Static site generator
- `mkdocs-material>=9.5.0` - Material Design theme
- `mkdocs-blogging-plugin>=2.2.0` - Auto-discovery for blog posts

## 🎯 Mission

Turn complex problems into practical AI-powered tools, mentor the next generation of builders, and create ROI-focused innovation through SaaS plugins and hackathons.

## 👥 Team

- **Thomas Seeber** - The Data Seer (Strategy, AI, Data Science)
- **Jeff Cogswell** - The Architect Eternal (Cloud, AI Architecture, Full-stack)

## 📄 License

© 2025 Toronto AI and Data. All rights reserved.

---

**Built with ❤️ using MkDocs Material**
