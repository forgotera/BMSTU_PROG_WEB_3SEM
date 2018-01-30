def check(epsilon)
  k = 0
  s = 0.0
  loop do
    k += 1
    s += (1.0 / faktorial(k))
    break if Math::E - (s + 1) < epsilon
  end
  puts "iteration=#{k}"
  s + 1
end

def faktorial(k)
  (1..k).inject { |fact, n| fact *= n }
end
