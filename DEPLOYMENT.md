# 🚀 ZOFIO AI - Deployment Guide for Render.com

## Prerequisites
- GitHub repository (already done ✅)
- Render.com account
- MongoDB Atlas database

## 📋 Step-by-Step Deployment

### 1. Backend Deployment (First)

#### Create Web Service on Render:
1. Go to [Render Dashboard](https://dashboard.render.com/)
2. Click "New" → "Web Service"
3. Connect your GitHub repository: `Gokul2771/zofio-app`

#### Configuration:
- **Name**: `zofio-backend`
- **Environment**: `Node`
- **Region**: `Oregon (US West)`
- **Branch**: `main`
- **Root Directory**: Leave empty
- **Build Command**: `cd src/zofio_backend && npm install`
- **Start Command**: `cd src/zofio_backend && node server.js`

#### Environment Variables:
Add these in the Environment section:
```
NODE_ENV=production
PORT=10000
MONGO_URI=mongodb+srv://zofioUser:Gokul%40123@zofio.vu2kmtk.mongodb.net/zofiodb?retryWrites=true&w=majority&appName=ZOFIO
JWT_SECRET=2d74d4f989b4b18c8692988bc6bfe52c1aa34cd8e7adf6ed9bf4528c53982842
FRONTEND_URL=https://zofio-frontend.onrender.com
```

#### Health Check:
- **Health Check Path**: `/health`

### 2. Frontend Deployment (Second)

#### Create Static Site on Render:
1. Click "New" → "Static Site"
2. Connect your GitHub repository: `Gokul2771/zofio-app`

#### Configuration:
- **Name**: `zofio-frontend`
- **Branch**: `main`
- **Root Directory**: Leave empty
- **Build Command**: `npm install && npm run build`
- **Publish Directory**: `build`

#### Environment Variables:
```
NODE_ENV=production
REACT_APP_API_URL=https://zofio-backend.onrender.com
```

## 3. Final Configuration

### After Both Services are Deployed:

1. **Update Backend FRONTEND_URL**:
   - Go to your backend service settings
   - Update `FRONTEND_URL` to your actual frontend URL
   - Example: `https://zofio-frontend.onrender.com`

2. **Test the Application**:
   - Visit your frontend URL
   - Try registering a new user
   - Test login functionality
   - Verify dashboard access

## 🌐 Expected URLs

After successful deployment, you'll have:
- **Frontend**: `https://zofio-frontend.onrender.com`
- **Backend**: `https://zofio-backend.onrender.com`
- **Health Check**: `https://zofio-backend.onrender.com/health`

## 🔧 Troubleshooting

### Common Issues:

1. **Build Fails**:
   - Check build logs in Render dashboard
   - Verify all dependencies are listed in package.json

2. **Backend Won't Start**:
   - Check environment variables are set correctly
   - Verify MongoDB connection string

3. **CORS Errors**:
   - Ensure `FRONTEND_URL` is set correctly in backend
   - Check that frontend `REACT_APP_API_URL` points to backend

4. **Database Connection**:
   - Verify MongoDB Atlas allows connections from all IPs (0.0.0.0/0)
   - Check database credentials

## 📊 Monitoring

- Monitor both services in Render dashboard
- Check logs for any errors
- Use the health check endpoint to verify backend status

## 🎉 Success!

Once deployed, your ZOFIO AI application will be live and accessible to users worldwide!

---

**Need help?** Check the logs in Render dashboard or review the main README.md for detailed documentation.
