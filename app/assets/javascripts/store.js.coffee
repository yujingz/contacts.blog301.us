authorization = "Token #{gon.api_key}"
console.log authorization

Contacts.Store = DS.Store.extend()

DS.RESTAdapter.reopen
  headers:
    "Authorization": authorization
