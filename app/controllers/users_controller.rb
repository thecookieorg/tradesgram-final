class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@works = @user.works
		@questions = @user.questions
	end
end