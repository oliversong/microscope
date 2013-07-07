Meteor.subscribe 'posts'

Deps.autorun( ->
  console.log 'There are' + Posts.find().count() + ' posts')
