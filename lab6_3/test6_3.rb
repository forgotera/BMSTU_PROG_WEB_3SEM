
require './logical6_3'
require 'minitest/autorun'

class TestProg < Minitest::Test
  def setup; end

  def test_1
    x = 0
    y = 1
    assert_in_delta(y, belongs_cosx(x, y), 0.0)
  end

  def test_2
    x = 0
    y = 0
    assert_in_delta(y, belongs_sinx(x, y), 0.0)
  end

  def teardown; end
end
