import { combineReducers } from 'redux';

import giphysReducer from './giphys_reducer';

export default combineReducers({
  giphys: giphysReducer //giphy reducers return giphys from receive action
});