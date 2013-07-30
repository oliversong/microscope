Meteor.subscribe 'posts'
Meteor.subscribe 'comments'

Deps.autorun( ->
  console.log 'There are' + Posts.find().count() + ' posts')
