class Post < ApplicationRecord
    belongs_to :tag

    validates :title, :made_by, :classroom, :category, :is_confirmed , presence: true

    def self.recent_posts
        Post.where("created_at >= ?", 1.week.ago.utc).order("created_at DESC")
    end
end
