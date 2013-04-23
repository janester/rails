window.app =
  audio: null
  dancer: null
  ready: ->
    console.log("app is ready")
    $("table").on("click", ".song", app.play_song)
    setInterval(app.show_spectrum, 1000)

  show_spectrum: ->
    spectrum = app.dancer.getSpectrum()
    rects = d3.select("svg").selectAll("rect").data(spectrum)
    rects.enter()
      .append("rect")
      .attr("x", (d,i) -> i * 2)
      .attr("y", 0)
      .attr("width", 2)
      .style("fill", "blue")
    rects.transition()
      .duration(1000)
      .attr("height", (d) -> d*1000)

  play_song: (e) ->
    (e).preventDefault()
    filename = $(this).data().filename
    track = $(this).data().track
    name = $(this).data().name
    console.log("filename: #{filename}, track: #{track}")
    # audio_tag = $("#audio_tag").children()[0]
    # $(audio_tag).attr("src", "/audios/#{filename}")

    $("#song_name").text(name)

    $("audio").remove()
    $("#audio_tag").append("<audio controls='controls' src=''/>")
    app.audio = $("audio")[0]

    app.dancer = new Dancer()
    app.dancer.load(app.audio)
    app.audio.src = "/audios/#{filename}"
    app.dancer.play()

$(document).ready(app.ready)
