Contacts.User = DS.Model.extend
  name:     DS.attr('string')
  tel:      DS.attr('string')
  email:    DS.attr('string')
  address:  DS.attr('string')
  birthday: DS.attr('date')
