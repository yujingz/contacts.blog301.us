Contacts.UsersShowView = Ember.View.extend
  submit: ->
    @get('controller').send('updateUser')
    false
