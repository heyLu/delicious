$:.unshift "lib"
require 'delicious'

describe HappilyAfter do
	it "is a class" do
		@topic.is_a?(Class).should.equal true
	end

	it "is itself" do
		@topic.class.should.equal HappilyAfter
	end

	it "provides #must as an alias to #should" do
		@topic.should.respond_to? :must
		@topic.should.respond_to? :bleh

		@topic.method(:should).should.be.same_as @topic.method(:must)
	end

	it "negates with #not" do
		true.should.equal false # ouch
		true.should.not.equal false
	end
end
