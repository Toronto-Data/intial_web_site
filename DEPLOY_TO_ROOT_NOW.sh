#!/bin/bash
# Deploy to toronto-data.github.io root domain
# This script assumes the repository has been renamed to Toronto-Data.github.io

echo "🚀 Deploying to https://toronto-data.github.io/ (root domain)..."
echo ""

# Navigate to project directory
cd "$(dirname "$0")" || exit 1

# Check if mkdocs is installed
if ! command -v mkdocs &> /dev/null; then
    echo "📦 Installing MkDocs..."
    pip install -r requirements.txt
fi

echo "📝 Current configuration:"
echo "   Repository: $(git remote get-url origin)"
echo "   Branch: $(git branch --show-current)"
echo ""

# Ask for confirmation
read -p "⚠️  This will FORCE DEPLOY to GitHub Pages. Continue? (y/N): " confirm
if [[ ! $confirm =~ ^[Yy]$ ]]; then
    echo "❌ Deployment cancelled."
    exit 0
fi

echo ""
echo "🏗️  Building site..."
mkdocs build --clean --verbose

if [ $? -ne 0 ]; then
    echo "❌ Build failed!"
    exit 1
fi

echo "✅ Build successful!"
echo ""
echo "📤 Force deploying to GitHub Pages..."

# Deploy with force to completely overwrite
mkdocs gh-deploy --force --clean --verbose

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deployment successful!"
    echo ""
    echo "🌐 Your site will be available at:"
    echo "   https://toronto-data.github.io/"
    echo ""
    echo "⏱️  Wait 2-3 minutes for GitHub Pages to update"
    echo "🔄 Clear your browser cache (Cmd+Shift+R or Ctrl+Shift+R)"
    echo ""
    echo "📋 Verify GitHub Pages settings:"
    echo "   https://github.com/Toronto-Data/Toronto-Data.github.io/settings/pages"
    echo "   - Source should be: gh-pages branch"
    echo ""
else
    echo ""
    echo "❌ Deployment failed!"
    echo ""
    echo "💡 Possible issues:"
    echo "   - Repository not renamed to 'Toronto-Data.github.io'"
    echo "   - Git remote URL incorrect"
    echo "   - No write permissions to repository"
    echo ""
    echo "🔧 To fix:"
    echo "   1. Rename repo: https://github.com/Toronto-Data/intial_web_site/settings"
    echo "   2. Update remote: git remote set-url origin https://github.com/Toronto-Data/Toronto-Data.github.io.git"
    echo "   3. Run this script again"
    exit 1
fi

