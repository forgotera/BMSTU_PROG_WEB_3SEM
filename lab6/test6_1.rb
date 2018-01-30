require './logical6_1'
require 'minitest/autorun'

class Test < Minitest::Test
  def setup; end

  def test_1
    assert_equal 120, faktorial(5)
  end

  def test_2
    epsilon1 = 10**-4
    assert_in_delta Math::E, check(epsilon1), 1e-4
  end

  def test_3
    epsilon2 =10**-5
    assert_in_delta Math::E, check(epsilon2), 1e-5
  end

  def teardown; end
end
