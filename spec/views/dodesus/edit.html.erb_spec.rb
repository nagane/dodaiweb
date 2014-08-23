require 'rails_helper'

RSpec.describe "dodesus/edit", :type => :view do
  before(:each) do
    @dodesu = assign(:dodesu, Dodesu.create!(
      :name => "MyString",
      :image => ""
    ))
  end

  it "renders the edit dodesu form" do
    render

    assert_select "form[action=?][method=?]", dodesu_path(@dodesu), "post" do

      assert_select "input#dodesu_name[name=?]", "dodesu[name]"

      assert_select "input#dodesu_image[name=?]", "dodesu[image]"
    end
  end
end
