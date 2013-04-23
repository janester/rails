$(function(){
  show_color_box();
  $("#new_p").click(show_new_form);
  $("#cancel_p").click(hide_form);
  $("#enter_p").click(create_priority);
  $("#priority_table").on("click", ".color", update_priority);
  $("#update_p").click(update_priority2);
  $("#priority_table").on("click", ".up", up_rank);
  $("#priority_table").on("click", ".down", down_rank);
  init_mc();

  $("#new_t").click(show_new_t_form);
  $("#cancel_t").click(hide_t_form);
  $("#enter_t").click(create_task);
  $("#task_table").on("click", ".t_delete", delete_task);
  $("#task_table").on("click", ".t_edit", edit_task);
  $("#update_t").click(update_task);
  is_checked();
  $("#task_table").on("click", ".checkbox", update_completion);


});

// Global Variables
// *********************************
var priorities = [];
var tasks = [];
var map;
// *********************************





