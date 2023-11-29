class Language < ApplicationRecord
  has_many :challenges, dependent: :destroy
  has_many :users, through: :skills

  # validates :name, presence: true, uniqueness: { scope: :languages,
  #   message: "Fuck off" }
end
