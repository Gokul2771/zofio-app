# ZOFIO AI - Full Stack Application

![ZOFIO AI](https://img.shields.io/badge/ZOFIO-AI-blue.svg)
![React](https://img.shields.io/badge/React-18.2.0-blue.svg)
![Node.js](https://img.shields.io/badge/Node.js-18.x-green.svg)
![MongoDB](https://img.shields.io/badge/MongoDB-Atlas-green.svg)

## 🚀 Overview

ZOFIO AI is a modern full-stack web application that combines artificial intelligence capabilities with a sleek user interface. The platform offers AI-powered solutions including chatbots, cloud platforms, analytics dashboards, and a recruiting tool (ZofioPro).

## 🏗️ Architecture

- **Frontend**: React 18 with modern hooks, React Router for navigation
- **Backend**: Node.js with Express.js REST API
- **Database**: MongoDB Atlas (cloud database)
- **Authentication**: JWT-based authentication with bcryptjs
- **Styling**: Bootstrap 5 with custom CSS and Framer Motion animations
- **Deployment**: Render.com (both frontend and backend)

## 📁 Project Structure

```
zofio/
├── public/                 # Static files
├── src/
│   ├── zofio_backend/     # Backend API server
│   │   ├── controller/    # Route controllers
│   │   ├── models/        # MongoDB models
│   │   ├── routes/        # API routes
│   │   ├── Middlewar/     # Custom middleware
│   │   ├── server.js      # Main server file
│   │   └── package.json   # Backend dependencies
│   │
│   ├── zofio_login/       # Frontend application
│   │   ├── src/
│   │   │   ├── Dashboard/ # Dashboard components
│   │   │   ├── Login_page.js
│   │   │   ├── Regstration_page.js
│   │   │   ├── config.js  # API configuration
│   │   │   └── App.js
│   │   ├── public/        # Frontend static files
│   │   └── package.json   # Frontend dependencies
│   │
│   ├── App.js             # Main React app
│   ├── index.js           # React entry point
│   └── index.css          # Global styles
├── package.json           # Root package.json
├── render.yaml           # Render deployment config
└── README.md
```

## 🌟 Features

### 🔐 Authentication System
- User registration and login
- JWT-based authentication
- Password encryption with bcryptjs
- Protected routes

### 🎨 Modern UI/UX
- Responsive design with Bootstrap 5
- Glassmorphism effects
- Smooth animations with Framer Motion
- Interactive dashboard with notifications

### 🤖 AI Products
- **AI Chatbot**: Interactive AI conversation interface
- **Cloud AI Platform**: Scalable AI solutions
- **Analytics Dashboard**: Data visualization and insights
- **ZofioPro Recruiter**: AI-powered recruitment tool

### 📱 Dashboard Features
- Product showcase with video demos
- Real-time notifications
- Client statistics
- Service overview
- Career section

## 🛠️ Installation & Setup

### Prerequisites
- Node.js 18.x or higher
- MongoDB Atlas account
- Git

### 1. Clone the Repository
```bash
git clone https://github.com/Gokul2771/zofio-app.git
cd zofio
```

### 2. Backend Setup
```bash
cd src/zofio_backend
npm install

# Create .env file with your MongoDB URI and JWT secret
```

### 3. Frontend Setup
```bash
cd ../zofio_login
npm install

# Environment variables are already configured
```

### 4. Development Mode
```bash
# From root directory
npm run dev

# Or run individually:
# Backend: npm run dev:backend
# Frontend: npm run dev:frontend
```

## 🌐 Environment Variables

### Backend (.env)
```env
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/database
PORT=5000
NODE_ENV=development
JWT_SECRET=your-jwt-secret-key
FRONTEND_URL=http://localhost:3000
```

### Frontend (.env)
```env
REACT_APP_API_URL=http://localhost:5000
REACT_APP_ENV=development
```

## 🚀 Deployment on Render

### Backend Deployment:
1. Create a new Web Service on Render
2. Connect your GitHub repository
3. Build Command: `cd src/zofio_backend && npm install`
4. Start Command: `cd src/zofio_backend && node server.js`
5. Set environment variables: MONGO_URI, JWT_SECRET, FRONTEND_URL

### Frontend Deployment:
1. Create a new Static Site on Render
2. Build Command: `npm install && npm run build`
3. Publish Directory: `build`
4. Set environment variable: REACT_APP_API_URL

## 📖 API Endpoints

- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /health` - Health check

## 🔧 Technologies Used

### Frontend
- React 18.2.0
- React Router Dom 6.x
- Bootstrap 5.3.0
- Framer Motion 10.x
- React Icons 4.x

### Backend
- Node.js 18.x
- Express.js 4.x
- MongoDB with Mongoose 7.x
- JWT Authentication
- bcryptjs for password hashing

## 👨‍💻 Author

**Gokul2771**
- GitHub: [@Gokul2771](https://github.com/Gokul2771)
- Project: [ZOFIO AI](https://github.com/Gokul2771/zofio-app)

---

**Built with ❤️ using React and Node.js**
