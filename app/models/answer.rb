class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :submitted_answer, presence: true
end
