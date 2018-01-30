require './logical6_3'

def main(n)
  puts "enter #{n} coordinate x y "
  (0...n).each do |i|
    puts "#{i+1} coordinate"
    x = gets.to_f
    y = gets.to_f
    yield x, y
  end
end

puts 'how much coordinate do you  want to enter?'
n = gets.to_i
block = ->(x, y) { neibr x, y }
main(n, &block)
