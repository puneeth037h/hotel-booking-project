// import logo from './logo.svg';
import './App.css';
// import Header from './components/Header/Header';
import Nav from './components/Nav/Nav';
import Herosection from './components/Hero section/Herosection';
import Features from './components/Features/Features';
import Signup from './components/Signup/Signup';

function App() {
  return (
    <div className="App">
      {/* <Header></Header> */}
      <Nav></Nav>
      <Herosection></Herosection>
      <Features></Features>
      {/* <Signup></Signup> */}
    </div>
  );
}

export default App;
