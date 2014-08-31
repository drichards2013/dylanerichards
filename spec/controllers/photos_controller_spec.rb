require 'rails_helper'

describe PhotosController do

  let(:photo) { FactoryGirl.create(:photo) }

  describe '#index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end

    it 'assigns @photo to photos displayed in descending order' do
      get :index
      expect(assigns(:photos)).to eq Photo.all.order('created_at DESC')
    end
  end

  describe '#show' do
    it 'renders the show template' do
      get :show, id: photo
      expect(response).to render_template :show
    end

    it 'assigns @photo to the correct photo' do
      get :show, id: photo
      expect(assigns(:photo)).to eq photo
    end
  end

  describe '#create' do
    it 'saves the new post in the database' do
      expect {
        FactoryGirl.create(:post)
      }.to change(Post, :count).by 1
    end
  end

  describe '#edit' do
    it 'renders the edit template' do
      get :edit, id: photo
      expect(response).to render_template :edit
    end

    it 'assigns the correct photo to @photo' do
      get :edit, id: photo
      expect(assigns(:photo)).to eq photo
    end
  end
end
