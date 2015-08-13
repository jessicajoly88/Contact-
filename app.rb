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
