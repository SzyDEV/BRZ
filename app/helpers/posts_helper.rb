module PostsHelper
    def post_params
        params.require(:post).permit(
            :title,
            :description,
            :made_by,
            :classroom,
            :category,
            :tag_id,
            :image)
    end
end
