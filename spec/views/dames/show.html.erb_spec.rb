require 'rails_helper'

RSpec.describe "dames/show", :type => :view do
  before(:each) do
    @dame = assign(:dame, Dame.create!(
      :image => "",
      :image_content_type => "Image Content Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Image Content Type/)
  end
end
