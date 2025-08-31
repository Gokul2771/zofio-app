import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import LoginPage from "./zofio_login/Login_page";
import Dashboard from "./zofio_login/Dashboard/Dashboard"; // ✅ only this one
import RegisterPage from "./zofio_login/Regstration_page";
import RecruitingProduct from "./zofio_login/Dashboard/zofioPro";   // ✅ Recruiter tool

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<LoginPage />} />
        <Route path="/register" element={<RegisterPage />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/recruiter" element={<RecruitingProduct />} />  {/* ✅ new route */}
      </Routes>
    </Router>
  );
}

export default App;
