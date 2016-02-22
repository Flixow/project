require "rails_helper"

RSpec.describe Post do

	context "without a name" do
		it { should_not be_valid }
	end
end