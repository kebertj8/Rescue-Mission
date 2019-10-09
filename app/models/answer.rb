class Answer < ApplicationRecord
  validates :description, presence: true
  validates :description, length: { minimum: 50 }
  belongs_to :question
end 