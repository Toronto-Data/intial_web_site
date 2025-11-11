#!/bin/bash
# Deploy Toronto AI and Data website to GitHub Pages

echo "🚀 Deploying Toronto AI and Data to GitHub Pages..."
echo ""

# Check if we're in the right directory
if [ ! -f "mkdocs.yml" ]; then
    echo "❌ Error: mkdocs.yml not found. Please run this script from the project root."
    exit 1
fi

# Check if mkdocs is installed
if ! command -v mkdocs &> /dev/null; then
    echo "📦 Installing dependencies..."
    pip install -r requirements.txt
fi

echo "🏗️  Building site..."
mkdocs build --clean

if [ $? -ne 0 ]; then
    echo "❌ Build failed. Please check for errors above."
    exit 1
fi

echo "✅ Build successful!"
echo ""
echo "📤 Deploying to GitHub Pages..."
mkdocs gh-deploy --force --clean --verbose

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deployment successful!"
    echo ""
    echo "🌐 Your site will be available at:"
    echo "   https://toronto-data.github.io/intial_web_site/"
    echo ""
    echo "⏱️  Wait 2-3 minutes for GitHub Pages to update"
    echo "🔄 Clear your browser cache (Ctrl+Shift+R or Cmd+Shift+R)"
    echo ""
    echo "📋 Next steps:"
    echo "   1. Go to https://github.com/Toronto-Data/intial_web_site/settings/pages"
    echo "   2. Ensure 'Source' is set to 'gh-pages' branch"
    echo "   3. Visit your site!"
else
    echo ""
    echo "❌ Deployment failed. Please check the errors above."
    echo ""
    echo "💡 Common fixes:"
    echo "   - Ensure you're on the main branch: git checkout main"
    echo "   - Ensure all changes are committed: git status"
    echo "   - Check GitHub permissions: Settings → Actions → Workflow permissions"
    exit 1
fi

