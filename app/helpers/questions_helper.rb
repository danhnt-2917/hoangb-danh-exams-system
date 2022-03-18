module QuestionsHelper
  def subject_collection
    Subject.select :name, :id
  end

  def creator_collection
    User.where(role: 1).select :name, :id
  end

  def question_type_collection
    Question.question_types.map {|k, v| [k.capitalize, v]}
  end
end
