class StaticPagesController < ApplicationController
	def index
		@random_number = Question.all.order("RAND()").first.id
	end

	def link
	end

	def contact
	end 

	def about
	end

	def app
	end
end
