require "rails_helper"

RSpec.describe Question, type: :model do
  describe "Associations" do
    it { should belong_to(:subject) }

    it { should belong_to(:user) }

    it { should have_many(:exam_details).dependent(:destroy) }

    it { should have_many(:answers).dependent(:destroy) }
  end

  describe "Question Nested attributes answer" do
    it { should accept_nested_attributes_for(:answers) }
  end

  describe "Enum" do
    it "define question_type as an enum" do
      should define_enum_for(:question_type)
    end
  end

  describe "scopes" do
    let(:user) {FactoryBot.create :user}
    let(:subject) {FactoryBot.create :subject}
    let(:question_1) {FactoryBot.create :question, content: "1+1=?", user_id: user.id}
    let(:question_2) {FactoryBot.create :question, content: "1+2=?", subject_id: subject.id, question_type: 1}
    let(:question_3) {FactoryBot.create :question, content: "1+3=?", subject_id: subject.id}

    context "find question by content" do
      it "should be listed question" do
        expect(Question.find_content("1+")).to eq [question_1, question_2, question_3]
      end
    end

    context "find question by user" do
      it "should be listed question" do
        expect(Question.find_user(user.id)).to eq [question_1]
      end
    end

    context "find question by subject" do
      it "should be listed question" do
        expect(Question.find_subject(subject.id)).to eq [question_2, question_3]
      end
    end

    context "find question by question type" do
      it "should be listed question" do
        expect(Question.find_type(0)).to eq [question_1, question_3]
      end
    end
  end
end
