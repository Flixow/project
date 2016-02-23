require 'rails_helper'

RSpec.describe "mailings/edit", type: :view do
  before(:each) do
    @mailing = assign(:mailing, Mailing.create!(
      :list_id => 1,
      :template => "MyString"
    ))
  end

  it "renders the edit mailing form" do
    render

    assert_select "form[action=?][method=?]", mailing_path(@mailing), "post" do

      assert_select "input#mailing_list_id[name=?]", "mailing[list_id]"

      assert_select "input#mailing_template[name=?]", "mailing[template]"
    end
  end
end
