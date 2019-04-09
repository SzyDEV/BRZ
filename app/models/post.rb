class Post < ApplicationRecord
    belongs_to :tag

    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    validates :title, :made_by, :classroom, :category, :is_confirmed , presence: true

    def self.recent_posts
        Post.where("created_at >= ?", 1.week.ago.utc).order("created_at DESC")
    end

    def self.search(search)
        if search == ""
            where(nil)
        elsif search
            where('tag_id LIKE ?',"#{search}")
        else
            where(nil)
        end
    end
end
