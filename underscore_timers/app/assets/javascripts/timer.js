$(function(){

  $("#enter").click(add_number);
  $("#square").click(square);
  $("#fn").click(generic_function);
  $("#start").click(start_timer);
  $("#stop").click(stop_timer);
});

var numbers = [];
var timer = null;

function add_number()
{
  var num = $("#number").val()
  num = parseInt(num)
  numbers.push(num)
  var div = $("<div>")
  div.text(num)
  div.addClass("number_box")
  div.css("background-color", "rgb("+_.random(0,255)+", "+_.random(0,255)+", "+_.random(0,255)+")")
  $("#numbers").prepend(div)
  $("#number").val("")
  $("#number").focus()

}

function empty_boxes()
{
  var clear = $("#numbers").children(".clear")
  $("#numbers").empty()
  $("#numbers").append(clear)
}

function square()
{
  numbers = _.map(numbers, square_value);
  empty_boxes()
  show_numbers()
}

function square_value(i)
{
  return i*i
}

function show_numbers()
{
  _.each(numbers, create_number_box)
}
function create_number_box(i)
{
  var div = $("<div>")
  div.text(i)
  div.addClass("number_box")
  div.css("background-color", "rgb("+_.random(0,255)+", "+_.random(0,255)+", "+_.random(0,255)+")")
  $("#numbers").prepend(div)
}

function generic_function()
{
  numbers = _.map(numbers, funky_calc);
  empty_boxes()
  show_numbers()
}

function funky_calc(i)
{
  var equation = $("#number").val()
  return eval(equation)
}


function start_timer()
{
  timer = setInterval(gen_random_num, 1000);
}

function stop_timer()
{
  clearInterval(timer);
}

function gen_random_num()
{
  var div = $("<div>");
  div.text(_.random(0,1000));
  div.addClass("number_box");
  div.css("background-color", "rgb("+_.random(0,255)+", "+_.random(0,255)+", "+_.random(0,255)+")");
  $("#numbers").prepend(div);
}

function stop_timer()
{}