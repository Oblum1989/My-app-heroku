class Post < ApplicationRecord
    validates :attribute, presence :true
    belongs_to :user

end

