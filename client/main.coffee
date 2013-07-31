Meteor.subscribe 'posts'

Deps.autorun ()->
  Meteor.subscribe 'comments', Session.get('currentPostId')

Deps.autorun ()->
  console.log 'There are' + Posts.find().count() + ' posts'
