import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor() {
    super();
    this.state = { searchTerm: 'golden retriever'};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchSearchGiphys('golden+retriever');
  }
  //event handler
  handleChange(e){
    this.setState({ searchTerm: e.currentTarget.value });
  }

  handleSubmit(e){
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
    //from container
  }

  render(){
    let { giphys } = this.props;
    //deconstruct (same as let giphys = this.props.giphys)

    return (
      <div>
        <form action="">
          <input value={this.state.searchTerm} onChange={this.handleChange}/>
          <button type="submit" onClick={this.handleSubmit}>Search!</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }

  
}

export default GiphysSearch;