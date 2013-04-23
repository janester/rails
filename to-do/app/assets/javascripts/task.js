function show_new_t_form()
{
  $(".form").removeClass("hide");
  $("#new_t").hide();
  $("#update_t").hide();
  $("#enter_t").show();
}

function hide_t_form()
{
  $(".form").addClass("hide");
  $("#new_t").show();
  var title = $("#t_title").val("");
  var desc = $("#t_desc").val("");
  var due = $("#t_duedate").val("");
  var address = $("#t_address").val("");
  var pid = $("#priority_id").val();
}

function show_edit_t_form()
{
  $(".form").removeClass("hide");
  $("#new_t").hide();
  $("#enter_t").hide();
  $("#update_t").show();
}

function create_task()
{
  var title = $("#t_title").val();
  var desc = $("#t_desc").val();
  var due = $("#t_duedate").val();
  var address = $("#t_address").val();
  var pid = $("#priority_id").val();
  var token = $("input[name=authenticity_token]").val();

  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/tasks",
  data: {authenticity_token:token, 'task[title]':title, 'task[desc]':desc, 'task[duedate]':due, 'task[address]':address, 'task[priority_id]':pid}
  }).done(process_task);
  return false;
}

function process_task(message)
{
  add_t_to_a(message);
  $("#task_table").empty();
  _.each(tasks, display_tasks);
}

function add_t_to_a(message)
{
  tasks = _.reject(tasks, function(x){ return x.id == message.id;});
  tasks.push(message);
  tasks = _.sortBy(tasks, function(obj){ return obj.title;});
}

function display_tasks(message)
{
  var tr = $("<tr>");
  var checkbox = $("<td>");
  var input = $("<input>").attr("type", "checkbox");
  if(message.is_complete == "true")
  {
    input.attr("checked", "checked");
    tr.addClass("complete");
  }
  checkbox.append(input);
  var color;
  var pid;
  if(message.priority_id == null)
  {
    color = $("<div>").css("background-color", "white");
    pid = nil;
  }
  else
  {
    color = $("<div>").css("background-color", message.priority.color);
    pid = message.priority_id;
  }
  var pid_td = $("<td>").text(pid).addClass("hide");
  var c_td = $("<td>");
  color.addClass("color").addClass("box");
  c_td.append(color);
  var t_delete = $("<td>").addClass("t_delete");
  var da = $("<a>").attr("href", "/tasks").text("Delete");
  t_delete.append(da);
  da.addClass("button radius");
  var edit = $("<td>").addClass("t_edit");
  var ea = $("<a>").attr("href", "/tasks").text("Edit");
  edit.append(ea);
  ea.addClass("button radius");
  var tid = $("<td>").text(message.id).addClass("hide");
  var title = $("<td>").text(message.title);
  var desc = $("<td>").text(message.desc);
  var due = $("<td>").text(message.duedate);
  var address = $("<td>").text(message.address);
  add_marker(message.lat, message.long, message.title);
  tr.append(checkbox);
  tr.append(pid_td);
  tr.append(c_td);
  tr.append(title);
  tr.append(desc);
  tr.append(due);
  tr.append(address);
  tr.append(tid);
  tr.append(edit);
  tr.append(t_delete);
  $("#task_table").append(tr);
  hide_t_form();
}

function delete_task()
{
  var tid = $(this).prev().prev().text();
  var token = $("input[name=authenticity_token]").val();
  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/tasks/"+tid,
  data: {_method:"delete", authenticity_token:token, id:tid}
  }).done(function(message){console.log(message);});
  $(this).parent().remove();
  return false;
}

function edit_task()
{
  var button = $(this);
  var tid = button.prev().text();
  var address = button.prev().prev().text();
  var due = button.prev().prev().prev().text();
  var desc = button.prev().prev().prev().prev().text();
  var title = button.prev().prev().prev().prev().prev().text();
  var pid = button.prev().prev().prev().prev().prev().prev().prev().text();
  show_edit_t_form();
  $("#tid").val(tid);
  $("#t_address").val(address);
  $("#t_duedate").val(due);
  $("#t_desc").val(desc);
  $("#t_title").val(title);
  $("#priority_id").val(pid);
  return false;
}

function update_task()
{
  var title = $("#t_title").val();
  var desc = $("#t_desc").val();
  var due = $("#t_duedate").val();
  var address = $("#t_address").val();
  var pid = $("#priority_id").val();
  var tid = $("#tid").val();
  var token = $("input[name=authenticity_token]").val();

  $.ajax({
  dataType: 'json',
  type: "post",
  url: "/tasks/"+tid,
  data: {_method:"put", authenticity_token:token, 'task[title]':title, 'task[desc]':desc, 'task[duedate]':due, 'task[address]':address, 'task[priority_id]':pid, id:tid}
  }).done(process_task);
  return false;
}

function is_checked()
{
  _.each($("tr"), check_if_checked);

}

function check_if_checked(element)
{
  var checkbox = $(element).children().first().children();
  if(checkbox.attr("checked") === "checked")
  {
    $(element).addClass("complete");
  }
}

{

}
