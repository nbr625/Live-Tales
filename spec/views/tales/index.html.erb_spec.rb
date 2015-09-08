require 'rails_helper'

RSpec.describe "tales/index", type: :view do
  before(:each) do
    assign(:tales, [
      Tale.create!(
        :title => "Title"
      ),
      Tale.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of tales" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
