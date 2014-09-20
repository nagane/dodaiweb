require 'rails_helper'

RSpec.describe "dames/edit", :type => :view do
  before(:each) do
    @dame = assign(:dame, Dame.create!(
      :image => "",
      :image_content_type => "MyString"
    ))
  end

  it "renders the edit dame form" do
    render

    assert_select "form[action=?][method=?]", dame_path(@dame), "post" do

      assert_select "input#dame_image[name=?]", "dame[image]"

      assert_select "input#dame_image_content_type[name=?]", "dame[image_content_type]"
    end
  end
end
