import LoginForm from "./components/Login"
import SignUpForm from "./components/Signup"
import LandingPage from "./components/LandingPage"
import {
  BrowserRouter as Router,
  Routes,
  Route
} from 'react-router-dom';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<LoginForm />}></Route>
        <Route path="/signup" element={<SignUpForm />}></Route>
        <Route path="/dashboard" element={<LandingPage />}></Route>
      </Routes>
    </Router>
  )
}

export default App
