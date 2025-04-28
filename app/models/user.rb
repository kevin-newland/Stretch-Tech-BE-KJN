class User < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :saved_questions, dependent: :destroy
end
