Template.postItem.helpers(
  ownPost: ()->
    return this.userId == Meteor.userId()

  domain: ()->
    a = document.createElement('a')
    a.href = this.url
    return a.hostname

  commentsCount: ()->
    return Comments.find(
      postId: @_id
    ).count()
)
