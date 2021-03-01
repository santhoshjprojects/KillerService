import React, { Component } from 'react';
import './App.css';
import TaskContainer from './components/taskcontainer.js'

class App extends Component {
  render() {
    return (
      <div className="container">
        <div className="header">
          <h1>Todo List</h1>
        </div>
        <TaskContainer />
      </div>
    );
  }
}

export default App;