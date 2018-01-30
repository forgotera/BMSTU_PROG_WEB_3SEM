require "./5_2.rb"
require "minitest/autorun"

class Test < Minitest::Test
	def setup
	end

	 def test_1
		 x=10
		 z= 998.27052684
		 assert_in_delta z,func(x),1e-8
	 end

	 def teardown
	 end
end