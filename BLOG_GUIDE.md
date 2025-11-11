# Blog Post Creation Guide

## Quick Start

Adding a new blog post to the Toronto AI and Data website is simple - just create a markdown file in the `docs/blog/` directory with proper front matter, and it will automatically appear on the blog index page!

## Step-by-Step: Create a New Blog Post

### 1. Create Your File

```bash
docs/blog/your-post-title.md
```

**Naming Convention**:
- Lowercase letters only
- Use hyphens (not underscores or spaces)
- Be descriptive: `measuring-ai-roi.md` not `post1.md`

### 2. Add Required Front Matter

Every blog post MUST start with YAML front matter:

```yaml
---
title: Your Compelling Article Title
description: A concise, SEO-friendly description (150-160 characters ideal)
author: Thomas Seeber OR Jeff Cogswell
date: 2025-01-15
tags: [Tag1, Tag2, Tag3, Tag4]
---
```

**Field Descriptions**:

- **title**: The headline (appears at top of post and in listings)
- **description**: Used for SEO and blog card previews
- **author**: Who wrote it (use full name)
- **date**: Publication date in YYYY-MM-DD format
- **tags**: Array of 3-5 relevant tags (see tag list below)

### 3. Write Your Content

After front matter, write your article in markdown:

```markdown
# Your Article Title

**By Author Name | Month Day, Year**

Your opening paragraph that hooks the reader...

## Main Section

Content here...

### Subsection

More detailed content...

## Conclusion

Wrap up your key points...

---

**Call to action text** [Link text](../relevant-page/)

## Related Resources

- [Article 1](../blog/related-post/)
- [Page 2](../about/)
```

### 4. Save and Build

That's it! The mkdocs-blogging-plugin will:

✅ Automatically discover your new post  
✅ Add it to the blog index page  
✅ Sort it by date (newest first)  
✅ Display with proper styling  
✅ Include tags and metadata  

**No manual updates to navigation or index.md required!**

## Content Guidelines

### Article Structure

Every post should include:

1. **Hook** - Compelling opening (1-2 paragraphs)
2. **Problem Statement** - What challenge are you addressing?
3. **Main Content** - Your insights, solutions, and recommendations
4. **Examples** - Real-world applications or case studies
5. **Practical Takeaways** - Actionable items readers can implement
6. **Call-to-Action** - Clear next step (join hackathon, become partner, etc.)
7. **Related Resources** - 2-3 links to related content

### Length Guidelines

- **Short posts**: 800-1,200 words
- **Standard posts**: 1,500-2,500 words (most common)
- **Deep dives**: 2,500-4,000 words
- **Technical tutorials**: 2,000-3,500 words

### Recommended Tags

Use consistent tags from these categories:

**Topics**:
- AI Development
- Strategy
- Technical
- Tutorial
- Case Study
- Business Intelligence
- AI Ethics
- ROI
- Metrics

**Audience**:
- Small Business
- Students
- Developers
- Career Development
- Mentorship

**Technologies**:
- Shopify
- HubSpot
- Salesforce
- Python
- JavaScript
- SaaS

**Formats**:
- How-To Guide
- Opinion
- Analysis
- Framework

## Brand Voice Guidelines

Follow Toronto AI and Data brand voice:

### ✅ Do

- Explain complex concepts in simple, direct language
- Sound like a seasoned mentor and strategic partner
- Emphasize ROI, practicality, and real-world impact
- Use heroic language sparingly as flavor
- Celebrate learning, collaboration, and experimentation
- Include real examples and case studies

### ❌ Don't

- Be goofy, sarcastic, or slapstick
- Overhype AI or make unrealistic promises
- Be academic or dry; keep it applied and actionable
- Use grim, dystopian, or edgy hacker vibes
- Use jargon without explanation

### Tone Examples

**Good**: "After 15+ years in data science, I've seen businesses drown in data but starve for insights. Here's how to fix that."

**Bad**: "LOL, everyone's collecting data but nobody knows what to do with it! 😂"

**Good**: "The SaaS plugin market is exploding. Small businesses can leverage AI without massive teams."

**Bad**: "AI is going to revolutionize everything and if you don't implement it NOW you'll be left behind in the dust!"

## Markdown Formatting Tips

### Code Blocks

Use fenced code blocks with language specification:

````markdown
```python
def calculate_roi(gains, costs):
    return ((gains - costs) / costs) * 100
```
````

### Callout Boxes

Use admonitions for emphasis:

```markdown
!!! success "Pro Tip"
    This is important advice readers should remember.

!!! warning "Watch Out"
    Common pitfall to avoid.

!!! info "Note"
    Additional context or information.

!!! tip "Best Practice"
    Recommended approach.
```

### Lists

Use bullet points or numbered lists:

```markdown
**Unordered**:
- First item
- Second item
- Third item

**Ordered**:
1. Step one
2. Step two
3. Step three
```

### Bold and Italic

```markdown
**Bold text** for emphasis
*Italic text* for slight emphasis
***Bold and italic*** for strong emphasis
```

### Links

**Internal links**:
```markdown
[Hackathons](../hackathons/)
[About Us](../about/)
[Another Blog Post](../blog/post-name/)
```

**External links**:
```markdown
[OpenAI Documentation](https://platform.openai.com/docs)
```

### Images

If adding images:

1. Save to `docs/assets/blog/`
2. Use descriptive filenames
3. Optimize for web (< 200KB)
4. Include alt text

```markdown
![Descriptive alt text for accessibility](../assets/blog/your-image.png)
```

## SEO Best Practices

### Title Optimization

- Keep under 60 characters
- Include primary keyword naturally
- Make it compelling and specific
- Use active voice

**Good**: "Measuring AI ROI - Beyond the Hype to Real Numbers"
**Bad**: "ROI"

### Description Optimization

- 150-160 characters ideal
- Include 1-2 keywords naturally
- Make readers want to click
- Avoid clickbait

**Good**: "A practical framework for calculating actual ROI from AI implementations, with real examples and spreadsheet templates you can use today."
**Bad**: "Learn about AI ROI and stuff."

### Header Hierarchy

- Use H2 (##) for main sections
- Use H3 (###) for subsections
- Never skip levels
- Include keywords in headers naturally

### Internal Linking

- Link to 2-4 other relevant pages
- Use descriptive anchor text
- Link early in the article
- Link to both blog posts and main pages

## Current Blog Posts

As of January 2025:

1. **The Future of AI in SaaS** (Jan 10) - Small business AI plugins
2. **Why Hackathons Work** (Jan 5) - Real-world learning
3. **Data to Decisions** (Dec 28) - Strategic AI framework
4. **Building Your First Shopify Plugin** (Dec 20) - Technical tutorial
5. **AI Ethics for Small Business** (Jan 15) - Trust while scaling
6. **Student to Developer Journey** (Jan 12) - Career roadmap
7. **Measuring AI ROI** (Jan 8) - Practical ROI framework

## Quality Checklist

Before publishing, verify:

- [ ] Front matter is complete (title, description, author, date, tags)
- [ ] Title is compelling and under 60 characters
- [ ] Description is 150-160 characters
- [ ] Content is at least 800 words
- [ ] Clear section headers (H2, H3)
- [ ] At least one example or case study
- [ ] Clear call-to-action at end
- [ ] 2-3 related resource links
- [ ] Grammar and spelling checked
- [ ] Code examples tested (if applicable)
- [ ] Tone matches brand voice
- [ ] Real value provided to readers

## Testing Locally

After creating your post:

```bash
# Rebuild the site
mkdocs build

# Start local server
mkdocs serve

# Visit http://127.0.0.1:8000/blog/
```

Your new post should appear automatically on the blog index!

## Troubleshooting

### Post Not Appearing

1. Check front matter is properly formatted
2. Ensure date is in YYYY-MM-DD format
3. Verify file is in `docs/blog/` directory
4. Rebuild site: `mkdocs build`

### Build Errors

1. Check YAML syntax in front matter
2. Ensure all required fields are present
3. Look for unclosed code blocks or quotes
4. Check for special characters in title

### Formatting Issues

1. Preview locally before pushing
2. Check markdown syntax
3. Verify image paths are correct
4. Test all links

## Resources

- [Markdown Guide](https://www.markdownguide.org/)
- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Brand Guidelines](Brand_voice_color.json)

## Questions?

- **Technical issues**: See [SETUP.md](SETUP.md)
- **Deployment**: See [DEPLOY.md](DEPLOY.md)
- **Accessibility**: See [ACCESSIBILITY.md](ACCESSIBILITY.md)

---

**Remember**: The power of the mkdocs-blogging-plugin means you just create the markdown file with proper front matter, and everything else happens automatically!

© 2025 Toronto AI and Data - Building the future through practical AI and mentorship.

