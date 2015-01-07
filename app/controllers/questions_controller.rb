class QuestionsController < ApplicationController
	attr_reader :score, :result

	def index
		@questions = Question.order("id").paginate(:page => params[:page], :per_page => 5)
	end

	def show
		@question = Question.find(params[:id])
		@question_content = @question.question
		@first_option = @question.first_option
		@second_option = @question.second_option
		@third_option = @question.third_option
		@right_answer_number = @question.answer
		@explanation = @question.explanation

		if @right_answer_number == 1
			@answer = @first_option
		elsif @right_answer_number == 2
			@answer = @second_option
		elsif @right_answer_number == 3
			@answer = @third_option
		else
			@answer = "Answer is not here."
		end

		@random_number = Question.all.order("RAND()").first.id
	end

end
