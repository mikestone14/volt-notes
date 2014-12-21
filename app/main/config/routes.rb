# See https://github.com/voltrb/volt#routes for more info on routes

get '/about', _action: 'about'
get '/notes/{{_index}}', _controller: 'notes', _action: 'index'
get '/notes/{{_index}}/edit', _controller: 'notes', _action: 'edit'
get '/notes/new', _controller: 'notes', _action: 'new'
get '/notes', _controller: 'notes', _action: 'index'

# Routes for login and signup, provided by user-templates component gem
get '/signup', _controller: 'user-templates', _action: 'signup'
get '/login', _controller: 'user-templates', _action: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
get '/', _controller: 'notes', _action: 'index'
