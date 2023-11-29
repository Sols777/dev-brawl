class Language < ApplicationRecord
  has_many :challenges
  has_many :users, through: :skills

  validates :name, presence: true, uniqueness: { scope: :languages,
    message: "thats not a valid language at the moment" }
end
