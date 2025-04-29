require "rails_helper"

RSpec.describe SavedQuestion, type: :model do
  describe "relationships" do
   it { should belong_to(:user) }
   it { should belong_to(:question) }
  end
end