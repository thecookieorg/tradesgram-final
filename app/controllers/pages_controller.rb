class PagesController < ApplicationController
  def index
  	@questions = Question.all.order(created_at: :desc)
  	@users = User.all
  end

  def landing
  end
end
