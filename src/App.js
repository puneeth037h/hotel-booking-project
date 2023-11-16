
import { BrowserRouter } from 'react-router-dom';
import './App.css';
// import Header from './components/Header/Header';
import Nav from './components/Nav/Nav';
import Herosection from './components/Hero section/Herosection';
import Features from './components/Features/Features';
import Customroutes from './components/customroutes/customroutes';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Nav></Nav>
        <Customroutes></Customroutes>
        <Herosection></Herosection>
        <Features></Features>
        
      </BrowserRouter>
    </div>
  );
}

export default App;
