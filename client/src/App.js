import './App.css';
import React, { useEffect, useState } from 'react';

function App() {
  const [ info, setInfo ] = useState([]);
  
  useEffect(() => {
    fetch('http://localhost:3000/info')
    .then((r) => r.json())
    .then((data) => setInfo(data))
  }, [])
  console.log(info[0].name)

  return (
    <div className="App">
      <div className='contact'>
        <h1>
        </h1>
      </div>
      <div className='about'>

      </div>
      <div className='skills'>

      </div>
      <div className='socials'>

      </div>

       
    </div>
  );
}

export default App;
