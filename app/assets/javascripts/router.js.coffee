Contacts.Router.reopen
  location: 'history'
  rootURL: '/'

Contacts.Router.map ()->
  @route('users', path: "/")
