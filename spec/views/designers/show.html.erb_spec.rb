require 'rails_helper'

RSpec.describe "designers/show", type: :view do
  before(:each) do
    @designer = assign(:designer, Designer.create!(
      :name => "Name",
      :second_name => "Second Name",
      :photo => "Photo",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/MyText/)
  end
end
