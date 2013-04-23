$(function(){
  // $("#age").blur(blur_func);
  $("#age").change(validate_age);
  // $("#name").focus(focus_func);
  // $("body").mousemove(colorize);
  $("body").keypress(shortcut)

});

function shortcut(data)
{
  var x = String.fromCharCode(data.which)
  var text = $("#text").text()+x
  $("#text").text(text);
  switch(x)
  {
    case "b":
    $("#text").css("color", "blue");
    break;
    case "g":
    $("#text").css("color", "green");
    break;
    case "y":
    $("#text").css("color", "yellow");
    break;
    case "p":
    $("#text").css("color", "purple");
    break;
    case "r":
    $("#text").css("color", "red");
    break;
    case "b":
    $("#text").css("color", "black");
    break;

  }

}


function blur_func()
{
  alert("blur")
}
function change_func()
{
  alert("change")
}
function focus_func()
{
  alert("focus")
}
function validate_age()
{
  $("#j").remove()
  var age = $("#age").val()
  age = parseInt(age)
  var p = $("<p>").text("Your age is "+age)
  p.attr("id", "j")
  $("h1").before(p)
  if(age>18)
    p.toggleClass("green")
  else
    p.toggleClass("red")
}

function colorize(eventdata)
{
  $("#x").text(eventdata.clientX);
  $("#y").text(eventdata.clientY);
  $("body").css("background-color", "rgb("+(eventdata.clientX%256)+", 0, "+(eventdata.clientY%256)+")")
  if((eventdata.clientX%2)==0)
  {
    $("#x").addClass("red")
    $("#x").removeClass("green")
  }
  else
  {
    $("#x").addClass("green")
    $("#x").removeClass("red")
  }
  if((eventdata.clientY%2)==0)
  {
    $("#y").addClass("red")
    $("#y").removeClass("green")
  }
  else
  {
    $("#y").addClass("green")
    $("#y").removeClass("red")
  }
}
