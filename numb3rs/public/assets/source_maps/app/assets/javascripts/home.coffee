class Home
  @document_ready: ->
    Home.get_total_words()

  @get_total_words: ->
    settings =
      dataType: 'JSON'
      type: 'get'
      url: '/word_total'
    $.ajax(settings).done(Home.set_slider)

  @set_slider: (message) ->
    console.log(message)
    $("#slider").slider({min:0, max:message, step:1, slide:Home.sliding})

  @sliding: (e, ui) ->
    count = ui.value
    settings =
      dataType: "json"
      type: "get"
      url: "/word?count=#{count}"
    $.ajax(settings).done(Home.results)

  @results: (message) ->
    $("#word").text(message.word)
    $("#hex").text(message.hex)
    $("#bin").text(message.bin)
    $("#dec").text(message.dec)


$(document).ready(Home.document_ready)
