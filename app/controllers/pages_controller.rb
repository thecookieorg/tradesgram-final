class PagesController < ApplicationController
  def index
  	@questions = Question.all.order(created_at: :desc)
  	if params[:search]
      @questions = Question.search(params[:search]).order("created_at DESC")
    else
      @questions = Question.all.order("created_at DESC")
    end
  	@users = User.all
  end

  def landing
  end
end
