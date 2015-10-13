require 'rails_helper'

RSpec.describe "hands/edit", type: :view do
  before(:each) do
    @hand = assign(:hand, Hand.create!(
      :owner => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit hand form" do
    render

    assert_select "form[action=?][method=?]", hand_path(@hand), "post" do

      assert_select "input#hand_owner[name=?]", "hand[owner]"

      assert_select "input#hand_status[name=?]", "hand[status]"
    end
  end
end
