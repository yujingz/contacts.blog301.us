Contacts.UsersShowController = Ember.Controller.extend
  actions:
    updateUser: ->
      userParams =
        email: @get("email")
        tel: @get("content.tel")
        address: @get("content.address")
        birthday: @get("content.birthday")

      @get('store').commit()
