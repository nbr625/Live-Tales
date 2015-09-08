require 'rails_helper'

RSpec.describe "tales/edit", type: :view do
  before(:each) do
    @tale = assign(:tale, Tale.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit tale form" do
    render

    assert_select "form[action=?][method=?]", tale_path(@tale), "post" do

      assert_select "input#tale_title[name=?]", "tale[title]"
    end
  end
end
