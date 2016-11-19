class PeopleController < ApplicationController
  def new
  	# just renders form
  end

	def create
		# post request
		user = Person.new(user_params)
		if user.save
		 session[:user_id] = user.id
		 redirect_to '/'
		else
		 redirect_to '/signup'
		end
	end

	private

	def user_params
		params.require(:person).permit(:name, :email, :password, :password_confirmation)
	end
end
