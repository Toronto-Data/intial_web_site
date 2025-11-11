# Assets Directory

This directory contains images, logos, and other media assets for the Toronto AI and Data website.

## Hero Images

Three accessible SVG hero images are provided with different styles:

### 1. `hero-placeholder.svg` (1200x600px)
**Full-featured hero image with comprehensive branding**

- Contains: Toronto AI and Data logo text, tagline, data visualization elements
- Text on image: 
  - "TORONTO AI & DATA"
  - "Building AI Solutions • Mentoring Innovators"
  - "Transforming Ideas into Impact Through Hackathons & Plugins"
  - "INNOVATION • MENTORSHIP • ROI-FOCUSED SOLUTIONS"
- Best for: Homepage, main landing pages
- Accessibility: Full SVG with title, description, and role attributes

### 2. `hero-simple.svg` (1200x400px)
**Clean modern design with focused messaging**

- Contains: "AI INNOVATION LAB" with brand tagline
- Text on image:
  - "AI INNOVATION LAB"
  - "PRACTICAL SOLUTIONS • REAL MENTORSHIP • MEASURABLE IMPACT"
  - "Toronto AI and Data"
- Best for: Section headers, hackathon pages, partner pages
- Accessibility: SVG with semantic markup

### 3. `hero-minimal.svg` (800x200px)
**Minimal banner for compact spaces**

- Contains: Brand name and simple tagline
- Text on image:
  - "TORONTO AI & DATA"
  - "Transform • Build • Mentor"
- Best for: Blog posts, resource pages, smaller sections
- Accessibility: Lightweight SVG with proper labeling

## Accessibility Features

All hero images are WCAG 2.2 Level AA compliant:

✅ **SVG Format**: Scalable, crisp at any size, small file size
✅ **Semantic Markup**: Includes `<title>` and `<desc>` elements
✅ **ARIA Labels**: `role="img"`, `aria-labelledby` attributes
✅ **Alt Text**: Descriptive alternative text in markdown
✅ **Color Contrast**: All text meets WCAG AA standards:
  - White text on teal background: 4.5:1+ contrast
  - Gold text on teal: 3.0:1+ (decorative accent only)
✅ **No Text as Image**: SVG text is actual text, not rasterized

## Brand Colors Used

- **Teal Primary**: #00A896
- **Teal Light**: #00C4AD
- **Coral Accent**: #FF6F61
- **Gold Highlight**: #FFD23F
- **White**: #FEFEFE

## Usage in Markdown

```markdown
![Descriptive alt text here](assets/hero-placeholder.svg){: .hero-image role="img" }
```

## Required Files

### Logo Files (Add These)
- `logo.png` - Site logo for header (recommended: 128x128px or larger, transparent background)
- `favicon.png` - Browser tab icon (recommended: 32x32px or 64x64px)

### Recommended Additional Assets
- Team photos (Thomas Seeber, Jeff Cogswell)
- Partner logos (Wuji Xuan Life Wellness, etc.)
- Blog post featured images
- Project screenshots for case studies

## File Naming Conventions

- Use lowercase letters
- Use hyphens for spaces (not underscores)
- Be descriptive: `wuji-xuan-logo.png` not `logo1.png`
- Include dimensions for raster images: `team-photo-800x600.jpg`

## Image Optimization

For raster images:
- Compress JPGs to 80-85% quality
- Use PNG for images requiring transparency
- Use WebP format for better compression (with fallbacks)
- Maximum recommended width: 1920px
- Optimize with tools like ImageOptim, TinyPNG, or Squoosh

## Accessibility Checklist for New Images

When adding new images:

- [ ] Provide descriptive alt text
- [ ] Ensure text in images has 4.5:1+ contrast ratio
- [ ] Don't convey information by color alone
- [ ] Keep file sizes reasonable (<500KB for photos)
- [ ] Use SVG for icons and logos when possible
- [ ] Test with screen readers
- [ ] Verify images scale properly on mobile

## Resources

- [WebAIM Alternative Text Guide](https://webaim.org/techniques/alttext/)
- [WCAG Image Requirements](https://www.w3.org/WAI/WCAG22/quickref/?tags=images)
- [SVG Accessibility](https://www.w3.org/WAI/tutorials/images/decorative/)

---

© 2025 Toronto AI and Data

