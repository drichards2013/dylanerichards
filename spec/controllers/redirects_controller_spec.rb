require 'rails_helper'

RSpec.describe RedirectsController, :type => :controller do

  describe "GET escalate" do
    it "returns http success" do
      get :escalate
      expect(response).to be_success
    end
  end

end
