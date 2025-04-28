class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :choices, dependent: :destroy
  has_many :saved_questions, dependent: :destroy
  has_many :question_categories, dependent: :destroy

  validates :content, presence: true
end
