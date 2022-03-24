require "rails_helper"

RSpec.describe Exam, type: :model do
  describe "Associations" do
    it { should belong_to(:quiz) }

    it { should belong_to(:user) }

    it { should have_many(:exam_details).dependent(:destroy) }
  end

  describe "Exam Nested attributes exam detail" do
    it { should accept_nested_attributes_for(:exam_details) }
  end

  describe "scopes" do
    let(:user) {FactoryBot.create :user}
    let(:subject) {FactoryBot.create :subject}
    let(:quiz) {FactoryBot.create :quiz, subject_id: subject.id}
    let(:exam_1) {FactoryBot.create :exam, quiz_id: quiz.id, created_at: DateTime.now-0.1}
    let(:exam_2) {FactoryBot.create :exam, quiz_id: quiz.id, created_at: DateTime.now-0.2}
    let(:exam_3) {FactoryBot.create :exam, created_at: DateTime.now-0.3, user_id: user.id}

    context "sort by created date" do
      it "should be order created date" do
        expect(Exam.sort_by_created_date).to eq [exam_3, exam_2, exam_1]
      end
    end

    context "find exam by subject" do
      it "should be listed exam by subject" do
        expect(Exam.find_by_subject(subject.id)).to eq [exam_1, exam_2]
      end
    end

    context "find exam by start date" do
      it "should be listed exam by start date" do
        expect(Exam.find_by_date("2022-03-23")).to eq [exam_1, exam_2, exam_3]
      end
    end

    context "find exam by user" do
      it "should be listed exam by user" do
        expect(Exam.find_by_user(user.id)).to eq [exam_3]
      end
    end
  end
end
