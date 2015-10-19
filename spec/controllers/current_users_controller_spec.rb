require 'rails_helper'

RSpec.describe CurrentUsersController, type: :controller do

  describe 'PUT #update' do
    it 'sets the current user' do
      current_user = CurrentUser.new(name: 'tom')
      post :update, { current_user: { name: 'tom' } }
      expect(assigns(:current_user)).to eq current_user
    end

    it 'sets the cookie of the current user' do
      post :update, { current_user: { name: 'vegeta' } }
      expect(response.cookies['current_user_name']).to eq 'vegeta'
    end
  end

end
