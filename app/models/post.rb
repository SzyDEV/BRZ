class Post < ApplicationRecord
    belongs_to :tag

    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    validates :title, :made_by, :classroom, :category, :is_confirmed , presence: true

    def self.recent_posts
        Post.where("created_at >= ?", 1.week.ago.utc).order("created_at DESC")
    end

    def self.search(tag,category)
        if(tag=="" && category =="")
            where(nil)
        elsif(tag && category=="") 
            where('tag_id LIKE ?',"#{tag}")
        elsif(category && tag=="")
            where('category LIKE ?',"#{category}")
        elsif tag && category
            where('tag_id LIKE ?',"#{tag}").
            where('category LIKE ?',"#{category}")
        else
            where(nil)
        end
    end
end
