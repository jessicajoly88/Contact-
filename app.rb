require("sinatra")
require("sinatra/reloader")
require("./lib/contact")
require("./lib/email")
require("./lib/phone_number")
require("./lib/mail_address")
also_reload("lib/**/*.rb")

get("/") do
  @contacts = Contact.all()
  erb(:index)
end

post("/") do
  contact = Contact.new({:first_name => params.fetch("first_name"), :last_name => params.fetch("last_name"), :job_title => params.fetch("job_title"), :company => params.fetch("company")})
  contact.save()
  erb(:success)
end
