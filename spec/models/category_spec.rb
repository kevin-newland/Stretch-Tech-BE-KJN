require "rails_helper"

RSpec.describe Category, type: :model do
  describe "relationships" do
   it { should have_many(:question_categories) }
   it { should have_many(:questions).through(:question_categories) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end