class Usermailer < ApplicationMailer
	
 def send_contact_details(name, email, message)
 	@name = name
 	@email = email
 	@message = message
 	mail(to: "sheryl.john@marlabs.com", subject: 'Contact Details')
 end


	
end
