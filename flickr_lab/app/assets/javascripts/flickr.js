$(function(){
  $("#enter").click(search_flickr);
  $("#wandh").click(set_wandh);
  $("#reset").click(reset_size)
});

var timer = null;
var page = 1;
var index;
var photos;

function search_flickr()
{
  var search = $("#search").val();
  search = search.split().join("+")
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=15d8a6668bca57f69c091c6df0c5ca74&text=' + search + '&per_page=500&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  photos = data.photos.photo;
  index = 0;
  start_timer();
}

function start_timer()
{
  var speed = $("#speed1").val();
  if(speed == "")
  {
    speed = 1000
  }
  else
  {
    speed = parseFloat(speed)*1000
  }
  clearInterval(timer);
  timer = setInterval(show_photo, speed);
}

function show_photo()
{
  var item = photos[index];
  var url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
  var div = $("<div>");
  div.css("background", "url("+url+")");
  div.css("background-repeat", "no-repeat");
  div.css("background-size", "cover");
  div.addClass("photo_size");
  $("#images").prepend(div);
  index++;
  if(index == 500)
  {
    page++;
    clearInterval(timer);
    search_flickr();
  }
}


function set_wandh()
{
  var width = $("#width").val();
  var height = $("#height").val();
  $(".photo_size").width(width+"px");
  $(".photo_size").height(height+"px");
}

function reset_size()
{
  $(".photo_size").width("200px");
  $(".photo_size").height("200px");
}