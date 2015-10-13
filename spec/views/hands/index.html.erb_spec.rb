require 'rails_helper'

RSpec.describe "hands/index", type: :view do
  before(:each) do
    assign(:hands, [
      Hand.create!(
        :owner => "Owner",
        :status => "Status"
      ),
      Hand.create!(
        :owner => "Owner",
        :status => "Status"
      )
    ])
  end

  it "renders a list of hands" do
    render
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
