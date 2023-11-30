class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :language

  validates :name, presence: true, uniqueness: { scope: :languages,
              message: "thats not a valid language at the moment" }
end
