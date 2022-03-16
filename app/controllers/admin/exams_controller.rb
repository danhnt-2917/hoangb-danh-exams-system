class Admin::ExamsController < Admin::AdminController
  before_action :load_exam, only: %i(update show)
  before_action :mark_exam, only: :update

  def index
    @pagy, @exams =
      pagy Exam.find_by_subject(params[:subject]).find_by_date(params[:start_time]).find_by_user(params[:user]).sort_by_created_date,
      items: Settings.page.items_10
  end

  def update
    if @exam.save
      flash[:success] = t(".mark_exam_success")
    else
      flash.now[:error] = t(".mark_exam_error")
    end
    redirect_to admin_exams_path
  end

  def show; end

  private

  def load_exam
    @exam = Exam.find_by id: params[:id]
    return if @exam

    flash[:danger] = t("empty_exam")
    redirect_to root_path
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
