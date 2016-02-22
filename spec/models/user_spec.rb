require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'creates a user' do
    expect_any_instance_of(User).to receive(:create).
      with({email: test@test.pl}.with_indifferent_access)
    post :create, user: 
      { first_name: 'Sideshow', last_name: 'Bob', name: 'Sideshow Bob' }
  end

end
