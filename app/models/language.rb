class Language < ApplicationRecord
  has_many :challenges, dependent: :destroy
end
