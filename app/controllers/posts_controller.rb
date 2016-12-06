class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).paginate(page: params[:page])
    else
      @posts = Post.where(published: true).paginate(page: params[:page])
      @tags = Post.tag_counts_on(:tags)
    end
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  def posts
    @posts = Post.where(published: false)
  end

  def publish
    post = Post.friendly.find(params[:id])
    post.published = true
    post.save

    redirect_to :back
  end

  def unpublish
    post = Post.friendly.find(params[:id])
    post.published = false
    post.save

    redirect_to :back
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :tag_list)
  end
end
