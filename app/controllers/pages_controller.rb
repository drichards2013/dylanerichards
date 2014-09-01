class PagesController < ApplicationController

  def home
    @quote = Quote.random
  end

  def about
  end

  def programming
    @posts = Post.tagged_with_programming
  end

  def photography
    @posts = Post.tagged_with_photography
  end

  def running
    @posts = Post.tagged_with_running
  end

  def yoga
    @posts = Post.tagged_with_yoga
  end

  def mindfulness
    @posts = Post.tagged_with_mindfulness
  end

  def meditation
    @posts = Post.tagged_with_meditation
  end

  def webdevelopment
    @posts = Post.tagged_with_web_development
  end

  def contact
  end
  
  def projects
  end
end
