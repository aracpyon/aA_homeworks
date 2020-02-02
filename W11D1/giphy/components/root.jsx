import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';
//and we are calling containers here

//functional componenet that will render all of app's React components.
//it should receive the app's Redux store as a prop
//will wrap our all of our app's components with Provider from react-redux;

const Root = ({store}) => {
  return (
    <Provider store={store}>
      <GiphysSearchContainer />
    </Provider>
  )
};

export default Root;