require 'rails_helper'

RSpec.describe "mailings/show", type: :view do
  before(:each) do
    @mailing = assign(:mailing, Mailing.create!(
      :list_id => 1,
      :template => "Template"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Template/)
  end
end
