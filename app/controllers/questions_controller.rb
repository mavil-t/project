class QuestionsController < ApplicationController
  def show
  	
  end

  def delete

  end
  def main
  	@q_count = Question.all.count
  end
end
