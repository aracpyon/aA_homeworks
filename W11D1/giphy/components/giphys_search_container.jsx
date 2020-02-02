import { connect } from 'react-redux';
import GiphysSearch from './giphys_search';
import { fetchSearchGiphys } from '../actions/giphy_actions';


//container components subscribe to the store, read state, and pass props while
//presentational components render the user interface;

const mapStateToProps = state => ({
  giphys: state.giphys
})

const mapDispatchToProps = dispatch => {
  return {fetchSearchGiphys: (searchTerm) => dispatch(fetchSearchGiphys(searchTerm))};
}

export default connect(mapStateToProps, mapDispatchToProps)(GiphysSearch);