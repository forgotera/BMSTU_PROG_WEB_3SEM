require './logical7_1'
require 'minitest/autorun'

class TestProg < Minitest::Test
  def setup
    amount_of_numbers = 40
    File.open('lab7_1.txt', 'w') do |_f|
      amount_of_numbers.times do |i|
        buf = rand(1000) + 1
        buf *= -1 unless (i / 10).even?
        _f.puts buf.to_s
      end
    end
  end

  def test_1
    n = 3
    k = 0
    num_array = File.readlines('lab7_1_answer.txt')
    num_array.map!(&:chomp)
    num_array.map!(&:to_i)
    num_array.each_index { |i| k += 1 if (num_array[i] > 0) && (num_array[i + 1] < 0) }
    assert_equal n, k
  end

  def teardown
    File.delete
  end
end
