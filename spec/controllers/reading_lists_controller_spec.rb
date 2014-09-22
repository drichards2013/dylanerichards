require 'rails_helper'

describe ReadingListsController do
  describe '#discern_reading_list' do
    reading_list = FactoryGirl.create(:reading_list)
    reading_list2 = FactoryGirl.create(:reading_list)

    it 'assigns @reading_list to a reading list if one is passed in with params' do
      get :edit, id: reading_list2

      expect(assigns(:reading_list)).to eq reading_list2
    end
  end
end
