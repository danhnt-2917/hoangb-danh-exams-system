class ExamsController < ApplicationController
  before_action :seeding_current_user, only: %i(index new create)
  before_action :find_quiz, only: :new
  before_action :load_exam, only: :show

  def index
    @pagy, @exams = pagy @current_user.exams.find_by_subject(params[:subject]).sort_by_created_date,
                         items: Settings.page.items_10
  end

  def new
    @exam = @current_user.exams.build
    load_question
  end

  def create
    exam = @current_user.exams.build exam_params
    exam.total_score = 0
    if exam.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  private

  def load_exam
    @exam = Exam.find_by id: params[:id]
    return if @exam

    flash[:danger] = t("empty_exam")
    redirect_to root_path
  end

  def load_question
    @questions = Question.where(subject_id: params[:subject]).take(@quiz.quantity_question).to_a

    @questions.each do |question|
      @exam.exam_details.build question_id: question.id
    end

    @exam.exam_details.each do |eds|
      eds.question.answers.each do |answer|
        eds.exam_detail_answers.build answer_id: answer.id
      end
    end
  end

  def find_quiz
    @quiz = Quiz.find_by subject: params[:subject]
    return if @quiz

    flash.now[:danger] = "No quiz found"
    redirect_to root_path
  end

  def exam_params
    params.require(:exam).permit Exam::EXAM_PARAMS
  end
end
