require 'rails_helper'

RSpec.describe "tales/show", type: :view do
  before(:each) do
    @tale = assign(:tale, Tale.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
