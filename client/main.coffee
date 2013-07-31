Meteor.subscribe 'posts'

Meteor.subscribe 'notifications'

Deps.autorun ()->
  Meteor.subscribe 'comments', Session.get('currentPostId')

Deps.autorun ()->
  console.log 'There are' + Posts.find().count() + ' posts'
