class Articule < ApplicationRecord
  belongs_to :user
  has_many :raitings
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :user_id, presence: true

  def self.average(articule)
    @avg= Rating.where(articule_id: articule).avg(point)
    return @avg
  end
end
