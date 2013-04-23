window.app =
  ready: ->
    setInterval(app.add_moment, 1000)
    setInterval(app.show_stairs, 1000)
    # setInterval(app.show_clock, 1000)
  color_body: ->
    d3.select("body")
      .transition()
      .duration(1000)
      .style("background", "green")
      .transition()
      .duration(1000)
      .style("background", "red")
  add_moment: ->
    $("#clock").text(moment().format("h:mm:ss a"))
  show_clock: ->
    sec = moment().format("s").toNumber()
    remainder = sec%3
    color = ["red", "yellow", "purple"]
    d3.select(".three")
      .transition()
      .duration(1000)
      .attr("r", (remainder+1)*50)
      .style("fill", color[remainder])
    rem = sec%10
    color2 = ["violet", "brown", "lavender", "turquoise", "red", "yellow", "purple", "blue", "green", "orange"]
    d3.select(".ten")
      .transition()
      .duration(1000)
      .attr("r", (rem+1)*50)
      .style("fill", color2[remainder])
  show_stairs: ->
    height = 600
    sec = moment().format("s").toNumber()
    rects = d3.select("svg").selectAll("rect").data([1..sec])
    rects.enter()
      .append("rect").style("fill", "rgb(#{_.random(1,255)}, #{_.random(1,255)}, #{_.random(1,255)})")
      .attr("width", 20)
      .attr("height", 10)
      .attr("x", (d) -> (d - 1)*20)
      .attr("y", (d) -> height - (d - 1)*10)
      .style("fill", "rgb(#{_.random(0,256)}, #{_.random(0,256)}, #{_.random(0,256)})")
    rects.exit()
      .transition()
      .attr("width", 0)
      .attr("height", 0)
      .remove()

$(document).ready(app.ready)
