# Like testing, simplicity and whatnot? Enter _delicious_

Well, `delicious` is just yet _another_ take on a testing framework
(dare to call it one!) that doesn't make all the stuff non-funny.

First things first, here you go:

* it has:
	- a funnier approach to it all
	- [colored](https://github.com/defunkt/colored) output
	- fancy Unicode characters (✔ when you're right)

* child steps:
	- no integration to whatever
	- no exception filtering
	- no(t much) features

But it's fun, anyway :)

## How it feels

Here's the code (always first)

	describe HappilyAfter do
		it "is a Happy Ending" do
			true.must.be true
		end

		it "is something" do
			# @topic is the class you're describing
			@topic.is_a?(Class).must.be.true
		end

		it "is not so smart by now" do
			false.should.be true # again, ouch!
			true.should.be true
		end
	end

## How it should be

Of course there should be less
[issues](https://github.com/anapple/delicious/issues) and more fun to
it, but for now the [testsuite](delicious/tree/master/spec/delicious.rb) should be longer
than the actual code and I should have fun with it.

You're invited, too, so **join the party!**

# A little bit of history

So there was/is [Test::Unit](http://rubydoc.info/stdlib/test/1.9.2), and
[MiniTest](https://github.com/seattllerb/minitest). But they just seem
not to match _my_ kind of way.
So, along the way (of course not testing/spec'ing anything) I read a
little bit about RSpec and even a little bit of Cucumber, recently, but
RSpec wants to have install **3** gems just to make feel a little safer
and Cucumber even more (I suppose) and it just feels not-at-home.

And I somehow tend to want to write everything just by myself and now,
here is my little (**very** few lines) only spec testing thing.
It's not even a `gem` by now, but it does do a few things I like:

- `should` ( and `should.not` and `should.be` and `so.on`)
- (almost) no requirements. (colored, yes, but that should be in
  ruby-core [1] anyway, right? :)
- it' unfinished (I don't like that actually, but that is what it tends
  to be mostly.)

[1](http://ruby-lang/en/community/ruby-core)
