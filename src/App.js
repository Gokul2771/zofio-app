import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import LoginPage from "./zofio_login/Login_page";
import Dashboard from "./zofio_login/Dashboard/Dashboard";
import RegisterPage from "./zofio_login/Regstration_page";
import RecruitingProduct from "./zofio_login/Dashboard/zofioPro";
import './App.css';

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path="/" element={<LoginPage />} />
          <Route path="/register" element={<RegisterPage />} />
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/recruiter" element={<RecruitingProduct />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
