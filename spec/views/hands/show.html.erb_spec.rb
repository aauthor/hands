require 'rails_helper'

RSpec.describe "hands/show", type: :view do
  before(:each) do
    @hand = assign(:hand, Hand.create!(
      :owner => "Owner",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Status/)
  end
end
