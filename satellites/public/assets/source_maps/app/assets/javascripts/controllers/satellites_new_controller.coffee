App.SatellitesNewController = Ember.ObjectController.extend
  needs: ["planetsShow"]
  sat_cancel: ->
    @get("controllers").get("planetsShow").set("isNew", false)
    @transitionToRoute("planets")
  save: ->
    satellite = @get("content")
    @get("controllers").get("planetsShow").get("satellites").pushObject(satellite)
    @get("store").commit()
    @get("controllers").get("planetsShow").set("isNew", false)
    @transitionToRoute("planets")
