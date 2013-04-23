// alert("hellow world");

var first = prompt("enter your name:");
// alert("you just entered "+first);
console.log("you just entered "+first)

var age = prompt("enter your age: ");
age = parseInt(age);
if(age < 18)
{
  console.log("you are a minor");
}
else
{
  console.log("you are a major");
}
switch(age)
{
  case 10:
    console.log('you are 10');
    break;
  case 20:
    console.log('you are 20');
    break;
  case 30:
    console.log('you are 30');
    break;
  default:
    console.log('age not specified');
}

var colors = [];
var color = prompt("enter a color");

while(color != "q")
{
  colors.push(color);
  var color = prompt("enter a color");
}

for(var index = 0; index < colors.length; index++)
{
  console.log('the color is '+colors[index])
}

function square(number)
{
  var square = number*number;
  return square
}

function cube(number)
{
  return (square(number)*number)
}
function area(length, width)
{
  return (length * width);
}

var response = prompt("(s)qure, (c)ube, (a)rea or (q)uit");
while(response !="q")
{
  switch(response)
  {
    case "s":
      var square_num = prompt("Enter a number you'd like the square of:")
      square_num = parseInt(square_num)
      console.log(square_num+" squared is "+ square(square_num))
      break;
    case "c":
      var cube_num = prompt("Enter a number you'd like the cube of:")
      cube_num = parseInt(cube_num)
      console.log(cube_num+" cubed is "+ cube(cube_num))
      break;
    case "a":
      var width = prompt("Enter a width:")
      var height = prompt("Enter a height:")
      width= parseInt(width)
      height= parseInt(height)
      console.log("The area where "+width+" is the width and "+height+" is the height is "+ area(width, height))
      break;
  }
  var response = prompt("(s)qure, (c)ube, (a)rea or (q)uit");
}