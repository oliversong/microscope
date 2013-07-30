Package.describe({
  summary: "A pattern to display application errors to the user"
});

Package.on_use( function(api, where) {
  api.use(['minimongo', 'mongo-livedata', 'templating'], 'client');
  api.use(['coffeescript'], ['client', 'server']);

  api.add_files(['errors.coffee', 'errors_list.html', 'errors_list.coffee'], 'client');
});
