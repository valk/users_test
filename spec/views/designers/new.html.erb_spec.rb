require 'rails_helper'

RSpec.describe "designers/new", type: :view do
  before(:each) do
    assign(:designer, Designer.new(
      :name => "MyString",
      :second_name => "MyString",
      :photo => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new designer form" do
    render

    assert_select "form[action=?][method=?]", designers_path, "post" do

      assert_select "input#designer_name[name=?]", "designer[name]"

      assert_select "input#designer_second_name[name=?]", "designer[second_name]"

      assert_select "input#designer_photo[name=?]", "designer[photo]"

      assert_select "textarea#designer_details[name=?]", "designer[details]"
    end
  end
end
