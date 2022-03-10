class StaticPagesController < ApplicationController
  def index
    @exam = Exam.new
  end
end
