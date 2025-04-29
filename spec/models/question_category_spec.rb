require "rails_helper"

RSpec.describe QuestionCategory, type: :model do
  describe "relationships" do
    it { should belong_to(:question) }
    it { should belong_to(:category) }
  end
end