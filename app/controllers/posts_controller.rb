class PostsController < ApplicationController
    include PostsHelper

    def index
        @current_week = Post.where("created_at >= ?", Date.today.at_beginning_of_week)
        @posts = Post.search(params[:tag],params[:category])
        @tags = Tag.all
    end 

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new

    end

    def create
        @post = Post.new(post_params)
        @post.is_confirmed = 0
        if @post.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def destroy 
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to root_path
    end

    def confirm
        post = Post.find(params[:id])
        post.is_confirmed = 1
        post.save

        redirect_to root_path
    end
end
