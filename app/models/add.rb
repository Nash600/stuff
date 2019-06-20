class Add < ApplicationRecord
    belongs_to :user
    Category=["", "cars", "services", "furniture"]
    has_one_attached :image
end
