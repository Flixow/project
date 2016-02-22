require "rails_helper"

RSpec.describe Category do
	
	context 'with no name' do
		it {should_not be_valid}
	end

	context "with a name" do
		
		let( :category ) { Category.new( name: "test" ) }
		subject { category }
		it {should be_valid}

		it 'is invalid if there is the same name' do
			category.save
			expect( Category.new( name: category.name ) ).to_not be_valid
		end

	end

end