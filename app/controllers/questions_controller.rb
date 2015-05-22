class QuestionsController < ApplicationController
	def index
		@question = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		question = Question.new(question_params)
		question.save
		redirect_to questions_path
	end

	private
		def question_params
			params.require(:question).permit(:question)
		end
end