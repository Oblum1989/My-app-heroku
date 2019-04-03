class City < ApplicationRecord
    validates :name, :country, presence: true, length: {minimum:3}
    has_many :houses
end
