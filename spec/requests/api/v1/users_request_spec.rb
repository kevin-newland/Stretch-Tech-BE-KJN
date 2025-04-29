require "rails_helper"

RSpec.describe "User Endpoints", type: :request do
  it "returns a list of users" do
    User.create!(username: "John Toe", email: "example1@fake.com", password: "password1")
    User.create!(username: "Jane Mary", email: "example2@fake.com", password: "password2")
    User.create!(username: "Jimmy Timmy", email: "example3@fake.com", password: "password3")

    get "/api/v1/users"

    expect(response.status).to eq(200)

    users = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(users.count).to eq(3)

    users.each do |user|
      expect(user).to have_key(:attributes)
      expect(user[:attributes][:username]).to be_a(String)
      expect(user[:attributes][:email]).to be_a(String)
    end
  end
end