
export const fetchSearchGiphys = searchTerm => (
  $.ajax({
    method: 'GET',
    url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=wtzEjFNskJ2nB80MYScOuNT81X9k3YO8&limit=2`
  })
);