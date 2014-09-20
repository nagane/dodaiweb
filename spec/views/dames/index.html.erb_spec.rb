require 'rails_helper'

RSpec.describe "dames/index", :type => :view do
  before(:each) do
    assign(:dames, [
      Dame.create!(
        :image => "",
        :image_content_type => "Image Content Type"
      ),
      Dame.create!(
        :image => "",
        :image_content_type => "Image Content Type"
      )
    ])
  end

  it "renders a list of dames" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Image Content Type".to_s, :count => 2
  end
end
