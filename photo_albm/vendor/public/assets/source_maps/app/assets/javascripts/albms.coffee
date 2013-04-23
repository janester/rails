class Home
  @document_ready: ->
    $("#album_form").on("click", 'a[data-clear-form]', Home.clear_albums_form)
    $("#photo_form").on("click", 'a[data-clear-photo-form]', Home.clear_photos_form)
    photos = $(".page_view").length
    $("#slider").slider({min:1, max:photos, step: 1, slide:Home.sliding})
  @clear_albums_form: (e) ->
    e.preventDefault()
    $("#album_form").empty()

  @clear_photos_form: (e) ->
    e.preventDefault()
    $("#photo_form").empty()

  @sliding: (e, ui) ->
    album_id = $("#aid").data("album-id")
    count = ui.value
    settings =
      dataType: 'script'
      type: "get"
      url: "/albums/#{album_id}/filter?count=#{count}"
    $.ajax(settings)


$(document).ready(Home.document_ready)


