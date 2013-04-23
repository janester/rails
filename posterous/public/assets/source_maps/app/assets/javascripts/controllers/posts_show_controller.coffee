App.PostsShowController = Ember.ObjectController.extend
  isEditing: false
  edit: ->
    this.set 'isEditing', true

  save: ->
    this.set 'isEditing', false
    this.get('store').commit()
