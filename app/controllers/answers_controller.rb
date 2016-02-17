class AnswersController < ApplicationController
  def show
  	
  end
  def index
  	@a_count=Answer.all.count
  end
end
