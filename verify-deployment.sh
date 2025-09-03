#!/bin/bash

echo "🔍 ZOFIO AI - Deployment Verification Checklist"
echo "================================================"

# Check if all required files exist
echo "📁 Checking required files..."

FILES_TO_CHECK=(
    "src/zofio_backend/server.js"
    "src/zofio_backend/package.json"
    "src/zofio_backend/.env"
    "src/zofio_login/package.json"
    "src/zofio_login/src/config.js"
    "package.json"
    "render.yaml"
)

for file in "${FILES_TO_CHECK[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file - Found"
    else
        echo "❌ $file - Missing"
    fi
done

echo ""
echo "🚀 Build Status:"

# Check if build directory exists
if [ -d "build" ]; then
    echo "✅ Production build - Complete"
    echo "   Build size: $(du -sh build | cut -f1)"
else
    echo "❌ Production build - Missing (run 'npm run build')"
fi

echo ""
echo "🔧 Next Steps:"
echo "1. Commit and push any remaining changes to GitHub"
echo "2. Deploy backend service on Render.com"
echo "3. Deploy frontend static site on Render.com"
echo "4. Configure environment variables"
echo "5. Test the deployed application"

echo ""
echo "📋 Environment Variables Needed:"
echo "Backend:"
echo "  - NODE_ENV=production"
echo "  - PORT=10000"
echo "  - MONGO_URI=<your-mongodb-uri>"
echo "  - JWT_SECRET=<your-jwt-secret>"
echo "  - FRONTEND_URL=<your-frontend-url>"
echo ""
echo "Frontend:"
echo "  - NODE_ENV=production"
echo "  - REACT_APP_API_URL=<your-backend-url>"
