def check(epsilon)
  enum = Enumerator.new do |y|
    fact = 1
    k = 1
    answer = 0.0
    s = 0.0
    loop do
      y.yield answer, k
      fact *= k
      s += (1.0 / fact)
      answer = s + 1
      k += 1
    end
  end

  array = enum.take_while do |answer|
    (Math::E - answer) > epsilon
  end
  puts array[-1][1]
  array[-1][0]
end
