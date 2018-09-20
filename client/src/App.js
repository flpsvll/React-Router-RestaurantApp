import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Login from './components/Login';
import Dashboard from './components/Dashboard';
import NavBar from './componets/NavBar';
import Home from './components/Home';
import About from './components/About';
import NoMatch from './components/NoMatch';

const App = () => (
  <Fragment>
    <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/about" component={About} />
      <Route exact path="/login" component={Login} />
      <Route exact path="/dashboard" component={Dashboard} />
      <Route component={NoMatch} />
    </Switch>
  </Fragment>
);

export default App;

