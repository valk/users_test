require 'rails_helper'

RSpec.describe "designers/index", type: :view do
  before(:each) do
    assign(:designers, [
      Designer.create!(
        :name => "Name",
        :second_name => "Second Name",
        :photo => "Photo",
        :details => "MyText"
      ),
      Designer.create!(
        :name => "Name",
        :second_name => "Second Name",
        :photo => "Photo",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of designers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
