require "rails_helper"

RSpec.describe Question, type: :model do
  describe "relationships" do
    it { should have_many(:answers) }
    it { should have_many(:choices) }
    it { should have_many(:saved_questions) }
    it { should have_many(:question_categories) }
  end

  describe "validations" do
    it { should validate_presence_of(:content) }
  end
end