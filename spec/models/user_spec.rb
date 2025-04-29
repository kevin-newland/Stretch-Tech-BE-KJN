require "rails_helper"

RSpec.describe User, type: :model do
  describe "relationships" do
    it { should have_many(:answers) }
    it { should have_many(:saved_questions) }
  end

  describe "validations" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end
end