require 'spec_helper'

describe Book do
	before :each do
		@book = Book.new "Title", "Author", :category
	end

	describe "#new" do
		it "returns a book object" do
			@book.should be_an_instance_of Book
		end

		it "throws an ArgumentError when given wrong nr of arguments" do
			lambda {Book.new "Title", "Author"}.should raise_exception ArgumentError
		end
	end

	describe "#title" do
		it "returns the correct title" do
			@book.title.should eql "Title"
		end
	end
	describe "#author" do
		it "returns the correct author" do
			@book.author.should eql "Author"
		end
	end
	describe "#category" do
		it "returns the correct category" do
			@book.category.should eql :category
		end
	end	
end