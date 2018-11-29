require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get ('/') do
  @hello = "check to see if working"
  erb(:input)
end
