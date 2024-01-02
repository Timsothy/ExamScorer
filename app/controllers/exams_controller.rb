class ExamsController < ApplicationController
  before_action :authenticate_student!, except: [:index]
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  def index
    @exams = Exam.order('created_at DESC')
  end

  def show
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @exam.update(exam_params)
      redirect_to exam_path(@exam)
    else
      render :edit
    end
  end

  def destroy
    @exam.destroy
    redirect_to root_path
  end

  private

  def exam_params
    params.require(:exam).permit(:grade_id, :exam_name_id,
                                 :japanese_score, :japanese_average_score,
                                 :mathematics_score, :mathematics_average_score,
                                 :english_score, :english_average_score,
                                 :sosial_score, :sosial_average_score,
                                 :science_score, :science_average_score,
                                 :total_score, :rank).merge(student_id: current_student.id)
  end

  def set_exam
    @exam = Exam.find(params[:id])
  end
end
