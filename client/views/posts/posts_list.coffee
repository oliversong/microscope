Template.postsList.helpers(
  posts: ()->
    Posts.find({}, {sort: {submitted: -1}, limit: postsHandle.limit()})

  postsReady: ()->
    not postsHandle.loading()

  allPostsLoaded: ()->
    not postsHandle.loading() and Posts.find().count() < postsHandle.loaded()
)

Template.postsList.events(
  'click .load-more': (e)->
    e.preventDefault()
    postsHandle.loadNextPage()
)
