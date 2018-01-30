require './logical5_2'
require 'minitest/autorun'

class Test < Minitest::Test
  def setup; end

  def test_1
    test = 'hapo leno'
    equal = 'tape lene'
    assert_equal(equal, format(test))
  end

  def test_2
    n = 1
    str = ''
    alphabet = ('a'..'z').to_a
    loop do
      (rand(9)+1).times do
        str << alphabet.sample
      end
      str[-1] = 'o'
      equal=str
      equal[-1]='e'
      assert_equal(equal,format(str))
      n += 1
      break if n == 50
    end
  end

  def teardown; end
end
