class Question < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum:20 }
  validates :description, length: { minimum:50 }
  validates :description, presence: true
  has_many :answers
end