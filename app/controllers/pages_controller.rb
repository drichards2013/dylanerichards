class PagesController < ApplicationController
  def home
    @posts = Post.all
  end

  def about
  end

  def programming
  end

  def photography
    @posts = Post.tagged_with(["photography", 'iphoneography'], :any => true)
    @photos = Photo.all.order("created_at DESC")
  end

  def projects
  end

  def running
    @posts = Post.tagged_with(["running"], :any => true)
  end

  def yoga
    @posts = Post.tagged_with(["yoga"], :any => true)
  end

  def mindfulness
    @posts = Post.tagged_with(["mindfulness"], :any => true)
  end

  def meditation
    @posts = Post.tagged_with(["meditation"], :any => true)
  end

  def contact
  end
end
