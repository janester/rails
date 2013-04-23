App.PlanetsNewController = Ember.ObjectController.extend
  save: ->
    @get("store").commit()
    @transitionToRoute("planets.new")
  cancel_new_planet: ->
    @transitionToRoute("planets")