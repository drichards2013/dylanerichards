require 'rails_helper'

describe PostsController do
  
  describe '#new' do
    it 'assigns @post to a new post' do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template :new
    end
  end
  
  describe '#edit' do
    it 'renders the edit template' do
      post = Post.create(title: 'Bar', body: 'Baz')
      post.save
      get :edit, id: post
      expect(response).to render_template :edit
    end

    it 'assigns the requested post to @post' do
      post = Post.create(title: 'Bar', body: 'Baz')
      post.save
      get :edit, id: post
      expect(assigns(:post)).to eq post
    end
  end

  describe '#show' do
    it 'renders the show template' do
      post = Post.create(title: 'Bar', body: 'Baz')
      post.save
      get :show, id: post
      expect(response).to render_template :show
    end

    it 'assigns the requested post to @post' do
      post = Post.create(title: 'Bar', body: 'Baz')
      post.save
      get :show, id: post
      expect(assigns(:post)).to eq post
    end
  end
  
  describe '#create' do
    it 'saves the new post in the database' do
      expect{
        post = Post.create(title: 'Bar', body: 'Baz')
        post.save
      }.to change(Post, :count).by(1)
    end
  end

end
