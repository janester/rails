$(function(){
  $("#add_stock_form").on("click", "#cancel_new_stock", hide_add_stock_form);
  $("#new_user_form").on("click", "#cancel_new_user", hide_new_user_form);
  $("#stock_table").on("click", ".chart_btn", start_timer);
  $("#stock_table").on("click", ".stop", stop_timer);
});
