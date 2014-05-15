class PagesController < ApplicationController
  def home
    @posts = Post.all
    @quote = Quote.first(offset: rand(Quote.count))

  end

  def about
  end

  def programming
    @posts = Post.tagged_with(["programming", 'web development'], :any => true).order("created_at DESC")
  end

  def photography
    @posts = Post.tagged_with(["photography", 'iphoneography'], :any => true)
    @photos = Photo.all.order("created_at DESC")
  end

  def projects
  end

  def running
    @posts = Post.tagged_with(["running"], :any => true).order("created_at DESC")
  end

  def yoga
    @posts = Post.tagged_with(["yoga"], :any => true).order("created_at DESC")
  end

  def mindfulness
    @posts = Post.tagged_with(["mindfulness"], :any => true).order("created_at DESC")
  end

  def meditation
    @posts = Post.tagged_with(["meditation"], :any => true).order("created_at DESC")
  end

  def webdevelopment
    @posts = Post.tagged_with(["meditation"], :any => true).order("created_at DESC")
  end

  def contact
  end
end
