class User < ApplicationRecord
  has_secure_password

  has_many :answers, dependent: :destroy
  has_many :saved_questions, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
