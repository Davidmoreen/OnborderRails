class Screen < ApplicationRecord
    validates :name, :content, presence: true
    serialize :content, JSON
end