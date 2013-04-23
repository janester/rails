window.App = Ember.Application.create
  LOG_TRANSITIONS: true

App.Router.map ->
  @route("about")
  @route("faq")
  @resource "planets", ->
    @route "show", {path: ":planet_id"}
    @route "new"
    @route "newSatellite"

App.Store = DS.Store.extend
  revision: 12
