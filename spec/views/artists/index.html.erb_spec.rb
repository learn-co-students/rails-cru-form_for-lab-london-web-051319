require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => "Name",
        :bio => "Bio"
      ),
      Artist.create!(
        :name => "Name",
        :bio => "Bio"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
  end
end
