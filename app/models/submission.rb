class Submission < ApplicationRecord
  attr_accessor :guess

  belongs_to :user
  belongs_to :challenge

  validates :result, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
