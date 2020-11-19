class ArticuleTag < ApplicationRecord
  belongs_to :tag
  belongs_to :articule
end
