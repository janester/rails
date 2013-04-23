function init_mc()
{
  var settings = {
    animationSpeed: 100,
    animationEasing: 'swing',
    change: null,
    changeDelay: 0,
    control: 'hue',
    defaultValue: '',
    hide: null,
    hideSpeed: 100,
    inline: false,
    letterCase: 'lowercase',
    opacity: false,
    position: 'default',
    show: null,
    showSpeed: 100,
    swatchPosition: 'left',
    textfield: false,
    theme: 'default'
  };
  $('INPUT.minicolors').minicolors(settings);
}
function show_color_box()
{
  var hide = $(".color");
  _.each(hide, make_color_box);
}
function make_color_box(e, i, l)
{
  var color = $(e).text();
  $(e).css("background-color", color);
  $(e).addClass("box");
  $(e).text("");
}
function show_new_form()
{
  $("#new_p").hide();
  $(".form").removeClass("hide");
  $("#enter_p").show();
  $("#update_p").hide();
}
function show_edit_form()
{
  $(".form").removeClass("hide");
  $("#new_p").hide();
  $("#enter_p").hide();
  $("#update_p").show();
}
function hide_form()
{
  $("#new_p").show();
  $(".form").addClass("hide");
  $("#name").val("");
  $("#ranking").val("");
  $('INPUT.minicolors').minicolors("value", "");
}
function create_priority()
{

  var name = $("#name").val();
  var ranking = $("#ranking").val();
  var color = $('INPUT.minicolors').minicolors("value");
  console.log(color, name, ranking);
  var token = $("input[name=authenticity_token]").val();

  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/priorities",
  data: {authenticity_token:token, 'priority[color]':color, 'priority[name]':name, 'priority[ranking]':ranking}
  }).done(process_priority);
  return false;
}
function process_priority(priority_list)
{
  _.each(priority_list, add_p_to_a);
  $("#priority_table").empty();
  _.each(priorities, display_new_priority);
}
function add_p_to_a(message)
{
  priorities = _.reject(priorities, function(x){ return x.id == message.id;});
  priorities.push(message);
  priorities = _.sortBy(priorities, function(obj){ return obj.ranking;}).reverse();
}
function display_new_priority(e)
{
  var name = e.name;
  var color = e.color;
  var ranking = e.ranking;
  var pid = e.id;
  var tr = $("<tr>");
  var up = $("<img>");
  up.attr("src", "assets/arrow_up.png");
  var down = $("<img>");
  down.attr("src", "assets/arrow_down.png");
  tr.append($("<td>").text(name).addClass("pname"));
  tr.append($("<td>").addClass("color").addClass("box").css("background-color", color));
  tr.append($("<td>").text(ranking).addClass("ranking").addClass("hide"));
  tr.append($("<td>").text(pid).addClass("pid").addClass("hide"));
  tr.append($("<td>").append(up).addClass("up"));
  tr.append($("<td>").append(down).addClass("down"));
  $("#priority_table").append(tr);
  hide_form();
}
function update_priority()
{
  var box = $(this);
  show_edit_form();
  var color = box.css("background-color");
  color = rgb2hex(color);
  $('INPUT.minicolors').minicolors("value", color);
  var name = box.siblings()[0];
  name = $(name).text();
  $("#name").val(name);
  var ranking = box.siblings()[1];
  ranking = $(ranking).text();
  $("#ranking").val(ranking);
  var pid = box.siblings()[2];
  pid = $(pid).text();
  $("#pid").text(pid);
  console.log(pid);
}
function update_priority2()
{
  var name = $("#name").val();
  var ranking = $("#ranking").val();
  var color = $('INPUT.minicolors').minicolors("value");
  var pid = $("#pid").text();
  console.log(color, name, ranking, pid);
  var token = $("input[name=authenticity_token]").val();

  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/priorities/"+pid,
  data: {_method:"put", authenticity_token:token, 'priority[color]':color, 'priority[name]':name, 'priority[ranking]':ranking, id:pid}
  }).done(process_priority);
  return false;
}
function rgb2hex(rgb){
 rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
 return "#" +
  ("0" + parseInt(rgb[1],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[2],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[3],10).toString(16)).slice(-2);
}
function up_rank()
{
  var pid = $($(this).prev()).text();
  var token = $("input[name=authenticity_token]").val();
  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/priorities/"+pid+"/up",
  data: {authenticity_token:token, id:pid}
  }).done(process_priority);
}
function down_rank()
{
  var pid = $($(this).prev().prev()).text();
  var token = $("input[name=authenticity_token]").val();
  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/priorities/"+pid+"/down",
  data: {authenticity_token:token, id:pid}
  }).done(process_priority);
}