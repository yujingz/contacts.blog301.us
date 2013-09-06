Contacts.UsersRoute = Ember.Route.extend()

Contacts.UsersIndexRoute = Ember.Route.extend
  model: ->
    Contacts.User.find()
  setupController: (controller, model)->
    @controller.set("users", model)
