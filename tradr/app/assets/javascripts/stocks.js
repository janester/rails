function hide_add_stock_form()
{
  $("#add_stock_form").empty();
  $("#show_stock_form_btn").show();
}
var timer = null;
var id;
var quotes = {};

function start_timer()
{
  id = $(this).parent().prev().text();
  var chart_cont = $("<div>");
  chart_cont.addClass("row").addClass("chart_cont");
  var button = $("<a>").attr("href", "#");
  button.text("Stop");
  button.addClass("button radius tiny stop");
  var chart = $("<div>").attr("id", id);
  chart_cont.append(button).append(chart);
  var row = $(this).parent().parent();
  chart_cont.insertAfter(row);
  quotes[id] = [];

  timer = setInterval(get_chart_info, 1000);
}

function get_chart_info()
{
  $.ajax({
  dataType: 'json',
  type: "get",
  url: "/stocks/"+id+"/chart"
  }).done(add_info_to_array);
}

function add_info_to_array(price_obj)
{
  var time_price = {time:moment().format("YYYY-MM-DD HH:mm:ss"), price:price_obj.price};
  quotes[price_obj.id].push(time_price);
  if(quotes[price_obj.id].length > 60) quotes[price_obj.id].shift();
  stock_obj = {array:quotes[price_obj.id], sym:price_obj.sym, id:price_obj.id};
  show_stock_chart(stock_obj);

}


function show_stock_chart(stock_obj)
{
  var chart = stock_obj.id += "";
  $("#"+chart).empty();
  new Morris.Line({
  // ID of the element in which to draw the chart.
  element: chart,
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: stock_obj.array,
  // The name of the data record attribute that contains x-values.
  xkey: 'time',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: [stock_obj.sym],
  ymin: "auto",
  ymax: "auto"
});
}

function stop_timer()
{
  clearInterval(timer);
}