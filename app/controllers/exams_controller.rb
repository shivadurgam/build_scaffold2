class ExamsController < ApplicationController
	
	before_action :set_exam, only: [:show, :edit, :update, :destroy]

	def home
		@exam = Exam.all
	end
	def index
		@exam = Exam.all
	end

	def new
		@exam = Exam.new
	end

	def create
		@exam = Exam.new(exam_params)

		if @exam.save
		redirect_to exams_path
		else 
		render 'new'
		end
	end

	def edit
		
	end

	def update
		@exam.update_attributes(exam_params)
		redirect_to exams_path
		
	end

	def show
		
	end

	def destroy
		@exam.destroy
		redirect_to exams_path
	end

	def set_exam
		@exam = Exam.find(params[:id])
	end
	def exam_params
		params.require(:exam).permit(:name, :marks)
	end


end
