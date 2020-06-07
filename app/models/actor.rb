class Actor < ApplicationRecord
  validates_presence_of :name, :age
  has_many :actor_movies
  has_many :movies, through: :actor_movies

  def self.age_order
    order(:age)
  end
end
