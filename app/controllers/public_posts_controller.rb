class PublicPostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	layout 'public'

  def index
  	@posts = Post.published
  end

  def show
		@comments = @post.comments
    @comment = Comment.new
  end

  def create_comment
    @comment = Comment.new name: params[:name], content: params[:content], post_id: params[:post_id]

    if @comment.save
      redirect_to :back, notice: 'The comment was successfully created'
    end
  end

  def posts_category
  	#@category = Category.find(params[:id])

  	@posts = @category.posts.published
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

end
