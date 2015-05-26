class Admin::QuestionsController < ApplicationController
	def index
		@question = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		question = Question.new(question_params)
		question.save
		redirect_to admin_questions_path
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
		@question.update(question_params)
		redirect_to admin_question_path
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy
		redirect_to admin_questions_path
	end

	def show
		@question = Question.find(params[:id])
	end

	private
		def question_params
			params.require(:question).permit(:question)
		end
end
