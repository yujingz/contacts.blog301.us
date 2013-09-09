Contacts.IndexRoute = Ember.Route.extend
  setupController: ->
    @controller.set("users", Contacts.User.find())
  renderTemplate: ->
    @render("users/index")

Contacts.UsersIndexRoute = Ember.Route.extend
  model: -> Contacts.User.find()
  setupController: (controller, model)->
    @controller.set("users", model)
