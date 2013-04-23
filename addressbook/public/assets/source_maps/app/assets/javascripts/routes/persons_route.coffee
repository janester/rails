App.PersonsRoute = Ember.Route.extend
  model: -> App.Person.find()
