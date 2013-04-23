window.App = Ember.Application.create()


App.Router.map ->
  @route("about")
  @route("faq")
  @resource "persons", ->
    @route "show", {path: "person_id"}

App.Store = DS.Store.extend
  revision: 12