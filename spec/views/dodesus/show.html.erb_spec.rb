require 'rails_helper'

RSpec.describe "dodesus/show", :type => :view do
  before(:each) do
    @dodesu = assign(:dodesu, Dodesu.create!(
      :name => "Name",
      :image => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
