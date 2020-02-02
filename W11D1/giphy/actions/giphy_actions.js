import * as APIUtil from '../util/api_util';

export const RECEIVE_SEARCH_GIPHYS = 'RECEIVE_SEARCH_GIPHYS';
export const REQUEST_SEARCH_GIPHYS = 'REQUEST_SEARCH_GIPHYS';

export const receiveSearchGiphys = giphys => {
  return {                        //giphys.data(where giphys are located)
    type: RECEIVE_SEARCH_GIPHYS,
    giphys
  }
};

//async actions (thunk action creator)
//we use thunk action creator to return a function that when called with 
//an argument of dispatch, can dispatch additional actions
export const fetchSearchGiphys = (searchTerm) => {
  return (dispatch) => {
    APIUtil.fetchSearchGiphys(searchTerm).then(giphys => dispatch(receiveSearchGiphys(giphys.data)))
  } //if you look at the giphys in store.getState(), actual giphys are located in 
  //giphys.data              
}
