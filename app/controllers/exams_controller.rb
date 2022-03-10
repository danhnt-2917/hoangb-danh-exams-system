class ExamsController < ApplicationController
  before_action :seeding_current_user, only: %i(index new create)
  before_action :find_quiz, only: :new
  before_action :load_exam, :mark_exam, only: :update

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

  def index
    @pagy,@exams = pagy @current_user.exams.find_by_subject(params[:subject]).sort_by_created_date,
     items: Settings.page.items_10
  end

  def update
    if @exam.save
      flash[:success] = t(".mark_exam_success")
    else
      flash.now[:error] = t(".mark_exam_error")
    end
    redirect_to exams_path
  end

  private

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
    @quiz = Quiz.find_by_subject params[:subject]
    return if @quiz

    flash.now[:danger] = "No quiz found"
    redirect_to root_path
  end


  def exam_params
    params.require(:exam).permit Exam::EXAM_PARAMS
  end

  def load_exam
    @exam = Exam.find_by id: params[:id]
    return if @exam

    flash[:danger] = t("empty_exam")
    redirect_to root_path
  end

  def mark_exam
    @exam.total_score = 0
    @exam.exam_details.each do |exam_detail|
      answer_array = exam_detail.question.answers.find_true_answer.count
      is_true = false
      exam_detail.exam_detail_answers.each do |eda|
        if eda.checked && eda.answer.is_answer
          is_true = true
        elsif !eda.checked && !eda.answer.is_answer
          next
        else
          is_true = false
          break
        end
      end
      if is_true == true
        @exam.total_score += 1.0 / answer_array
      end
    end
  end

end
