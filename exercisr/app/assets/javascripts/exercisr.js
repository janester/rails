$(function(){
  $("#show_chart").click(get_activity_from_selection);
});

function get_activity_from_selection()
{
  var a = $("#activities").val().split(" ").join("+");

  $.ajax({
  dataType: 'json',
  type: "get",
  url: "/exercises/chart/"+a
  }).done(show_activity_chart);
  return false;
}

function show_activity_chart(activities)
{
  $("#chart").empty();
  new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'chart',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: activities,
  // The name of the data record attribute that contains x-values.
  xkey: 'completed_on',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['amount'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});
}