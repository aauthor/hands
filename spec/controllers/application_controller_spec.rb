require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  controller do
    def index
      render text: 'Hello!'
    end
  end

  describe 'loading the current_user' do
    it 'assigns @current_user according to the cookie' do
      request.cookies['current_user'] = 'foo'
      get :index
      expect(assigns(:current_user)).to eq 'foo'
    end
  end

end
