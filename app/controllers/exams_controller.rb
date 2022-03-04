class ExamsController < ApplicationController
  before_action :mark_exam, :load_exam, only: :update

  def update
    if @exam.save
      flash[:success] = t(".mark_exam_success")
    else
      flash.now[:error] = t(".mark_exam_error")
    end
    redirect_to @exam
  end

  private

  def load_exam
    @exam = Exam.find_by id: params[:id]
    return if @exam

    flash[:danger] = t("empty_exam")
    redirect_to root_path
  end

  def mark_exam
    @exam.total_score = 0
    @exam.exam_details.each do |exam_detail|
      if exam_detail.question.single_choice?
        single_choice
      else
        multi_choice
      end
    end
  end

  def load_true_answer
    exam_detail.question.answers.find_by(is_answer: true)
  end

  def single_choice
    @exam.total_score += 1 if exam_detail.answers_choice ==
                              load_true_answer.content
  end

  def multi_choice
    answer_array = exam_detail.question.answers.find_true_answer.pluck(:content)

    score = 1.0/answer_array.count

    @exam.total_score += score if answer_array.include?(exam_detail.answers_choice)
  end
end
