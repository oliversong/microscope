Template.postItem.helpers(
  ownPost: ()->
    return this.userId == Meteor.userId()

  domain: ()->
    a = document.createElement('a')
    a.href = this.url
    return a.hostname
)

Template.postItem.events(
  'click .upvote': (e)->
    e.preventDefault()
    Meteor.call('upvote', @_id)
)
