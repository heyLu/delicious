# encoding: utf-8
require 'colored'

# A simple collection of methods to assert things.
module Delicious
	class NotHappy < StandardError; end

	def should
		return self
	end
	alias :must :should

	def be
		return self
	end

	def not
		@truthy = false
		return self
	end

	def equal thing; truthy? self == thing end
	def same_as thing; self.eql? thing end

	def describe cls, &block
		raise ArgumentError, "#{cls} is not a Class" unless cls.is_a? Class
		puts cls.name.yellow.bold
		block.call
	end

	def it what, &block
		@expectation ||= {}
		print "\t#{what} ".yellow
		puts (@expectation[what] = block.call) ? "✔".green : "✗".red.bold
		raise NotHappy, "Test failed".red unless @expectation[what]
	end

 private

 	def truthy? cond; @truthy ? cond : !cond end
end

class HappilyAfter; end

class Object
	# all that fancy spec'ing stuff is now in there...
	include Delicious
end
