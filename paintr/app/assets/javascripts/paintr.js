$(function(){
  $("#center").click(new_color)
  $("#colors").on("click", ".color_box", selected)
  $("#cclear").click(clear)
  $("#ienter").click(new_image)
  $("#images").on("click", ".img_box", img_selected)
  $("#canvas").on("mouseover",".paint", paint_color)
  create_paint_boxes();
});

function new_color()
{
  var color = $("#input_color").val()
  var div = $("<div>")
  div.addClass("color_box")
  div.css("background-color", color)
  $("#colors").prepend(div)
  $("#input_color").val("")
  $("#input_color").focus()

}

function new_image()
{
  var url = $("#input_image").val()
  var img = $("<img>")
  img.addClass("img_box")
  img.attr("src", url)
  $("#images").prepend(img)
  $("input_image").val("")
  $("#input_image").focus()
}

function selected()
{
  var box = $(this);
  var color = box.css("background-color")
  $("#selected").css("background-color", color)
  $("#selected").addClass("color_box")

}

function img_selected()
{
  var box = $(this)
  var img = box.attr("src")
  $("#img_selected").attr("src", img)
  $("#img_selected").addClass("img_box")
  $("#canvas").css("background", "url("+img+")")



}

function clear()
{
  $("#colors").empty()
  $("#selected").css("background-color", "white")
}

function paint_color()
{
  var color = $("#selected").css("background-color")
  var box = $(this)
  box.css("background-color", color)
}

function create_paint_boxes()
{

  {
    var paint = $("<div>");
    paint.addClass("paint");
    $("#canvas").prepend(paint);
  }
}