require "rails_helper"

RSpec.describe HandsController, type: :request do
  describe "redirecting to to hands" do
    it "routes to hands#index" do
      get '/'
      expect(response).to redirect_to("/hands")
    end
  end
end
