require 'rails_helper'

describe PhotosController do

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

  describe '#create' do
    it 'saves the new post in the database' do
      expect {
        FactoryGirl.create(:photo)
      }.to change(Photo, :count).by 1
    end
  end
end
