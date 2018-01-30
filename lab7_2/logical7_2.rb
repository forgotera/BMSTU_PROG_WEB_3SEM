class Treug
  attr_accessor :a, :b, :c

  def squard
    p = a + b + c
    puts Math.sqrt(p * (p - a) * (p - b) * (p - c))
  end
end

class Rectangle < Treug
  attr_accessor :d, :diag

  def squard
    p = (a + b + c + d) / 2
    puts Math.sqrt((p - d) * (p - a) * (p - b) * (p - c))
  end
end
def prog
  treug = Treug.new
  treug.a = 3
  puts treug.a

  treug.b = 4
  puts treug.b

  treug.c = 5
  puts treug.c

  treug.squard

  rect = Rectangle.new
  rect.a = 10
  puts rect.a

  rect.c = 20
  puts rect.c

  rect.b = 10
  puts rect.b

  rect.d = 20
  puts rect.d

  rect.diag = 22
  puts rect.diag

  rect.squard
end
