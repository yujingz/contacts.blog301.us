Contacts.UsersRoute = Ember.Route.extend
  model: -> Contacts.User.find()

Contacts.UserRoute = Ember.Route.extend
  model: (params)-> Contacts.User.find(params.id)
