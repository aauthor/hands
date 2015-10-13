require 'rails_helper'

RSpec.describe "hands/new", type: :view do
  before(:each) do
    assign(:hand, Hand.new(
      :owner => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new hand form" do
    render

    assert_select "form[action=?][method=?]", hands_path, "post" do

      assert_select "input#hand_owner[name=?]", "hand[owner]"

      assert_select "input#hand_status[name=?]", "hand[status]"
    end
  end
end
