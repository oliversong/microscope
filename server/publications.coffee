Meteor.publish 'posts', ()->
  Posts.find()

Meteor.publish('comments', ()->
  return Comments.find()
