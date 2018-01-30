require './logical6_3'

def main(n)
  puts "enter #{n} coordinate x y "
  (0..n).each do |i|
    puts "#{i + 1} coordinate"
    x = gets.to_f
    y = gets.to_f
    yield x, y
  end
end

puts 'how much coordinate do you want enter?'
n = gets.to_i
main (n) { |x, y| neibr x, y }
