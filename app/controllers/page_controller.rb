class PageController < ApplicationController
  def home
  end

  def about
  end

  def faqs
  end

  def contact
  end

  def send_details
  	name = params[:name]
  	email = params[:email]
  	message = params[:message]
  	Usermailer.send_contact_details(name, email, message).deliver
  	redirect_to page_contact_path
  end
end
