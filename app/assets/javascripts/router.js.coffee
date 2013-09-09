Contacts.Router.reopen
  location: 'history'
  rootURL: '/'

Contacts.Router.map ->
  @resource "index", path: "/"
  @resource "users", ->
    @route "show", path: "/:user_id"
