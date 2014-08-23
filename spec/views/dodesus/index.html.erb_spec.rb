require 'rails_helper'

RSpec.describe "dodesus/index", :type => :view do
  before(:each) do
    assign(:dodesus, [
      Dodesu.create!(
        :name => "Name",
        :image => ""
      ),
      Dodesu.create!(
        :name => "Name",
        :image => ""
      )
    ])
  end

  it "renders a list of dodesus" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
