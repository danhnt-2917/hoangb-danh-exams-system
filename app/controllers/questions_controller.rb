class QuestionsController < ApplicationController
  before_action :load_subject, only: :create

  def new
    @question = Question.new
  end

  def create
    current_user = User.first
    @question = current_user.questions.build question_params
    if @question.save
      flash[:success] = t(".create_success")
      redirect_to questions_path
    else
      flash.now[:error] = t(".create_error")
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit :content, :question_type, :subject_id,
      answers_attributes: [:id, :content, :is_answer, :_destroy]
  end

  def load_subject
    @subject = Subject.find_by id: params.dig(:question, :subject_id)
    return if @subject

    flash[:danger] = t("empty_subject")
    redirect_to root_path
  end
end
