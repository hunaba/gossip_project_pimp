class ContactController < ApplicationController
   def index
   if current_user
  @contacts = current_user.contacts
  render "index.html.erb"
 else 
  flash[:warning] = “You must be logged in to see this page”
  redirect_to '/log_in'
 end
end
