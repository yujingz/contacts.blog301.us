Contacts.Router.reopen
  location: 'history'
  rootURL: '/'

Contacts.Router.map ()->
  @route('users', path: "/")
  @route('user', path: '/users/:id')
