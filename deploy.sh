#!/bin/bash
# AgentFlow Landing Page Deployment Script
# Deploys to Vercel or provides manual deployment instructions

set -e

echo "🚀 AgentFlow Landing Page Deployment"
echo "======================================"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo -e "${RED}Error: index.html not found${NC}"
    echo "Please run this script from the landing-page directory"
    exit 1
fi

# Check for Vercel CLI
if command -v vercel &> /dev/null; then
    echo -e "${GREEN}✓ Vercel CLI found${NC}"
    
    echo ""
    echo "Deploying to Vercel..."
    
    # Deploy
    vercel --prod
    
    echo -e "${GREEN}✓ Deployment complete!${NC}"
    
else
    echo -e "${YELLOW}⚠ Vercel CLI not found${NC}"
    echo ""
    echo "Manual Deployment Options:"
    echo "=========================="
    echo ""
    echo "Option 1: Vercel (Recommended)"
    echo "-------------------------------"
    echo "1. Go to https://vercel.com/new"
    echo "2. Import your GitHub repository"
    echo "3. Or drag-and-drop the landing-page folder"
    echo "4. Your site will be live in seconds"
    echo ""
    echo "Option 2: Netlify"
    echo "-----------------"
    echo "1. Go to https://app.netlify.com/drop"
    echo "2. Drag-and-drop the landing-page folder"
    echo "3. Get instant deployment"
    echo ""
    echo "Option 3: GitHub Pages"
    echo "----------------------"
    echo "1. Push to GitHub"
    echo "2. Go to Settings > Pages"
    echo "3. Select main branch"
    echo "4. Site will be at username.github.io/repo-name"
    echo ""
    echo -e "${GREEN}Files ready for deployment in: $(pwd)${NC}"
    ls -la
fi
