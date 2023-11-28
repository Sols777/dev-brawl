class Challenge < ApplicationRecord
  belongs_to :language
  has_many :submissions
end
