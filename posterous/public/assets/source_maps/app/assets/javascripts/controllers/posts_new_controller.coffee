App.PostsNewController = Ember.ObjectController.extend
  save: ->
    console.log("saving...")
    @get("store").commit()
    @transitionToRoute("posts.index")
