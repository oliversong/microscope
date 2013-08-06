Template.postItem.helpers(
  ownPost: ()->
    return this.userId == Meteor.userId()

  domain: ()->
    a = document.createElement('a')
    a.href = this.url
    return a.hostname
  upvotedClass: ()->
    userId = Meteor.userId()
    if userId and not _.include(@upvoters, userId)
      'btn-primary upvoteable'
    else
      'disabled'
)

Template.postItem.events(
  'click .upvoteable': (e)->
    e.preventDefault()
    Meteor.call('upvote', @_id)
)
