Contacts.Router.reopen
  location: 'history'
  rootURL: '/'

Contacts.Router.map ->
  @route 'users', path: '/'
  @resource "users", ->
    @route "show", path: "/:user_id"
