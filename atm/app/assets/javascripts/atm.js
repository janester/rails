$(function(){
  $("#checkingw").click(checking_withdrawal);
  $("#checkingd").click(checking_deposit);
  $("#savingw").click(get_savings)
  $("#savingd").click(savings_deposit)
});


function checking_deposit()
{
  var damount = $("#checking").val();
  damount = parseFloat(damount);
  var balance = $("#cbalance").text();
  balance = parseFloat(balance);
  var newbalance = balance + damount;
  $("#cbalance").text(newbalance);
  $("#checking").val("");
}

function checking_withdrawal()
{
  var wamount = $("#checking").val();
  damount = parseFloat(wamount);
  var cbalance = $("#cbalance").text();
  cbalance = parseFloat(cbalance);
  var newbalance = cbalance - wamount;
  var swamount = $("#savings").val();
  swamount = parseFloat(swamount);
  var sbalance = $("#sbalance").text();
  sbalance = parseFloat(sbalance);
  total = sbalance + cbalance
  if(wamount>total)
    {
      alert("Sorry, you do not have enough funds")
    }
  else
  {
    newbalance = 0
    new_wamount = wamount - cbalance
    savings_withdrawal(sbalance, new_wamount)
  }
  $("#cbalance").text(newbalance);

  $("#checking").val("");
}

function savings_deposit()
{
  var damount = $("#savings").val();
  damount = parseFloat(damount);
  var balance = $("#sbalance").text();
  balance = parseFloat(balance);
  var newbalance = balance + damount;
  $("#sbalance").text(newbalance);
  $("#savings").val("");
}

function get_savings()
{
  var balance = $("#sbalance").text()
  var wamount = $("#savings").val()
  balance = parseFloat(balance)
  wamount = parseFloat(wamount)
  savings_withdrawal(balance, wamount)
}

function savings_withdrawal(balance, wamount)
{
  var newbalance = balance - wamount;
  if(wamount>balance)
    alert("You do not have enough money")
  else
    $("#sbalance").text(newbalance);
  $("#savings").val("");
}

function balance_alert()
{
  if($("#cbalance").text()
}