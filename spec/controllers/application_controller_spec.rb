require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  controller do
    def index
      render text: 'Hello!'
    end
  end

  describe 'loading the current_user' do
    it 'assigns @current_user according to the cookie' do
      current_user = CurrentUser.new(name: 'foo')
      request.cookies['current_user_name'] = current_user.name
      get :index
      expect(assigns(:current_user)).to eq current_user
    end
  end

end
