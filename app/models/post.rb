class Post < ApplicationRecord
    belongs_to :tag

    validates :title, :made_by, :classroom, :category, :is_confirmed , presence: true
end
