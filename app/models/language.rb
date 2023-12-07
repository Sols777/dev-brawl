class Language < ApplicationRecord
  has_many :challenges, dependent: :destroy
  has_many :submissions, through: :challenges

  def best_users
    best_submission = submissions.min_by(&:time_taken)
    best_submission&.user
  end
end
