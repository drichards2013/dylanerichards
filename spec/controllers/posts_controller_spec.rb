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

end
