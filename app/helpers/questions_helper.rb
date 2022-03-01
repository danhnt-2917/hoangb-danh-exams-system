module QuestionsHelper
  def subject_collection
    Subject.select :name, :id
  end
end
