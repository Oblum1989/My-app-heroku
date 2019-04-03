class User < ApplicationRecord
    has_many :houses
    has_many :posts
    has_many :notes
end
