require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get ('/') do
  @hello = "check to see if working"
  @list = Contact.all()
  erb(:input)
end

post ('/') do
  @list = Contact.all()
  first_name = params["first_name"]
  last_name = params["last_name"]
  job_title = params["job_title"]
  company = params["company"]
  contact_type = params["contact_type"]
  email = ''
  contact = Contact.new(:first_name=>first_name, :last_name=>last_name, :job_title=>job_title, :company=>company, :contact_type=>contact_type, :email=>email)
  contact.save()
  @list = Contact.all()
  # binding.pry
  erb(:input)
end

get ('/contacts/:id') do
  @contact = Contact.find(params[:id])
  @list = Contact.all()
  erb(:contact)
end

post ('/contacts/:id') do
  @contact = Contact.find(params[:id])
  first_name = params["first"]
  last_name = params["last"]
  email = params["email"]
  @contact.first_name = first_name
  @contact.last_name = last_name
  @contact.email = email
  erb(:contact)
end

get ('/whatever') do
  @contact = "test page to see"
  erb(:contact2)
end
