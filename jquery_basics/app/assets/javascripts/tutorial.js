$(function(){
  $('#btncolor').click(change_background)
  $('#btn').click(cool_popup)
  $('#btnhide').click(hideme)
  $('#btnshow').click(showme)
  $("#btnarea").click(area)

})

function cool_popup()
{
  var name = $("#name").val();
  alert(name+", you have won 1 billion dollars!!!!!")
}
function change_background()
{
  var color = $("#color").val();
  $("body").css("background", color)
}
function hideme()
{
  $("h1").hide()
}
function showme()
{
  $("h1").show()
}
function area()
{
  var width = $("#width").val()
  var height = $("#height").val()
  width = parseInt(width)
  height = parseInt(height)
  $("#result").text("The area is "+(width*height)+" sqft")
  if(width*height<100)
  {
    $("#result").addClass("success")
  }
  else
  {
    $("#result").addClass("alert")
  }

}