def func(x)
  if x > 0 && x != Math::PI/2
    (Math.log(x)/(Math.cos(x)**2)) + x**3 - 5
  else
    puts (" ERROR ")
  end
end