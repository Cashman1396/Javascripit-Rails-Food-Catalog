class Food < ApplicationRecord
    belongs_to :catalog
    validates :names, description, :cost, presence: true
end
