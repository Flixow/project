require 'rails_helper'

RSpec.describe "mailings/new", type: :view do
  before(:each) do
    assign(:mailing, Mailing.new(
      :list_id => 1,
      :template => "MyString"
    ))
  end

  it "renders new mailing form" do
    render

    assert_select "form[action=?][method=?]", mailings_path, "post" do

      assert_select "input#mailing_list_id[name=?]", "mailing[list_id]"

      assert_select "input#mailing_template[name=?]", "mailing[template]"
    end
  end
end
