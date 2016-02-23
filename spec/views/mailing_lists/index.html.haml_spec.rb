require 'rails_helper'

RSpec.describe "mailing_lists/index", type: :view do
  before(:each) do
    assign(:mailing_lists, [
      MailingList.create!(
        :name => "Name"
      ),
      MailingList.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of mailing_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
