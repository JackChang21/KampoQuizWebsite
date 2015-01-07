class QuestionsController < ApplicationController
	attr_reader :score, :result

	def index
		@questions = Question.all.order("RAND()").limit(10)
		
	end

	def show
		@question = Question.find(params[:id])
	end

end
