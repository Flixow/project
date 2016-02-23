require 'rails_helper'

RSpec.describe "mailings/index", type: :view do
  before(:each) do
    assign(:mailings, [
      Mailing.create!(
        :list_id => 1,
        :template => "Template"
      ),
      Mailing.create!(
        :list_id => 1,
        :template => "Template"
      )
    ])
  end

  it "renders a list of mailings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Template".to_s, :count => 2
  end
end
