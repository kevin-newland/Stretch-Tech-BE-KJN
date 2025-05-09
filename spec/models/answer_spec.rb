require "rails_helper"

RSpec.describe Answer, type: :model do
  describe "relationships" do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
  end

  describe "validations" do
    it { should validate_presence_of(:submitted_answer) }
  end
end