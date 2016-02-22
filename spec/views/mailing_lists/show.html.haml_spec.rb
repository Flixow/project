require 'rails_helper'

RSpec.describe "mailing_lists/show", type: :view do
  before(:each) do
    @mailing_list = assign(:mailing_list, MailingList.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
