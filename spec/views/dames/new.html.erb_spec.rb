require 'rails_helper'

RSpec.describe "dames/new", :type => :view do
  before(:each) do
    assign(:dame, Dame.new(
      :image => "",
      :image_content_type => "MyString"
    ))
  end

  it "renders new dame form" do
    render

    assert_select "form[action=?][method=?]", dames_path, "post" do

      assert_select "input#dame_image[name=?]", "dame[image]"

      assert_select "input#dame_image_content_type[name=?]", "dame[image_content_type]"
    end
  end
end
