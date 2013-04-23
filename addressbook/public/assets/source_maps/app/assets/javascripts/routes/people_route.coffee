App.PeopleRoute = Ember.Route.extend
  model: -> App.Person.find()
