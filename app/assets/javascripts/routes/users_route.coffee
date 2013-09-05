Contacts.UsersRoute = Ember.Route.extend
  model: ->
    Contacts.User.find()
  setupController: (controller, model)->
    @controller.set("users", model)
