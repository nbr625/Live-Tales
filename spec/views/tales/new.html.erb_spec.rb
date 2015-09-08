require 'rails_helper'

RSpec.describe "tales/new", type: :view do
  before(:each) do
    assign(:tale, Tale.new(
      :title => "MyString"
    ))
  end

  it "renders new tale form" do
    render

    assert_select "form[action=?][method=?]", tales_path, "post" do

      assert_select "input#tale_title[name=?]", "tale[title]"
    end
  end
end
