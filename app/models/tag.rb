class Tag < ApplicationRecord
    has_many :articule_tags
    has_many :articules, through: :article_tags
    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates_uniqueness_of :name
end
