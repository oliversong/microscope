Meteor.publish 'posts', ()->
  Posts.find()

Meteor.publish 'comments', (postId)->
  return Comments.find(
    postId: postId
  )
