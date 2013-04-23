App.Person = DS.Model.extend
  first: DS.attr "string"
  last: DS.attr "string"
  dob: DS.attr "date"
  email: DS.attr "string"
  phone: DS.attr "string"
