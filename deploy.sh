#!/bin/bash

echo "🚀 Starting ZOFIO AI Deployment Process..."

# Step 1: Install root dependencies
echo "📦 Installing root dependencies..."
npm install

# Step 2: Install backend dependencies
echo "🔧 Installing backend dependencies..."
cd src/zofio_backend
npm install
cd ../..

# Step 3: Install frontend dependencies
echo "🎨 Installing frontend dependencies..."
cd src/zofio_login
npm install
cd ../..

# Step 4: Build frontend
echo "🏗️ Building frontend for production..."
npm run build

echo "✅ Build process completed successfully!"
echo "📋 Next steps:"
echo "1. Push your code to GitHub"
echo "2. Deploy backend to Render with the backend service configuration"
echo "3. Deploy frontend to Render with the frontend service configuration"
echo "4. Update environment variables on Render dashboard"
