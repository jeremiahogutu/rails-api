# frozen_string_literal: true

# posts_controller.rb
module Api::V1
  class PostsController < ApplicationController
    def index
      respond_with Post.all
    end

    def create
      respond_with :api, :v1, Post.create(post_params)
    end

    def destroy
      respond_with Post.destroy(params[:id])
    end

    def update
      post = Post.find(params["id"])
      post.update_attributes(post_params)
      respond_with post, json: post
    end

    private

    def post_params
      params.require(:post).permit(:id, :title, :note)
    end
  end
end
