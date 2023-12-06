class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :submissions
  has_many :languages, through: :skills
  has_many :challenges, through: :submissions
  # belongs_to :leaderboard

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0 }

  def update_score(points)
    self.score += points
    save
  end
end
