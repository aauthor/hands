require 'rails_helper'

RSpec.describe CurrentUsersController, type: :controller do

  describe 'PUT #update' do
    it 'sets the current user' do
      post :update, { current_user: 'tom' }
      expect(assigns(:current_user)).to eq 'tom'
    end

    it 'sets the cookie of the current user' do
      post :update, { current_user: 'vegeta' }
      expect(response.cookies['current_user']).to eq 'vegeta'
    end
  end

end
