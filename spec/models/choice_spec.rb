require "rails_helper"

RSpec.describe Choice, type: :model do
  describe "relationships" do
   it { should belong_to(:question) }
  end

  describe "validations" do
   it { should validate_presence_of(:content) }
  end
end