def neibr(x, y)
  belongs_cosx(x, y)
  belongs_sinx(x, y)
end

def belongs_cosx(x, y)
  if y == Math.cos(x)
    puts "tocka #{x} , #{y} prinadlezhit func y=cos(x)"
  else
    puts "tocka #{x} , #{y} ne prinadlezhit func y=cos(x)"
  end
   Math.cos(x)
end

def belongs_sinx(x, y)
  if y == Math.sin(x**2)
    puts "tocka #{x} , #{y} prinadlezhit func y=sin(x**2)"
  else
    puts "tocka #{x} , #{y} ne prinadlezhit func y=sin(x**2)"
  end
   Math.sin(x**2)
end
