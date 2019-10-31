class UsersController < ApplicationController
	def new
	end

	def create
		puts params
		user = User.new(
			first_name: params[:first_name],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			)
		if user.save
			session[:user_id] = user.id
			flash[:success] = "Successfully Created User!"
			redirect_to '/welcome'
		else
			flash[:warning] = "Invalid Email or password"
			render 'new'
		end
	end
end
