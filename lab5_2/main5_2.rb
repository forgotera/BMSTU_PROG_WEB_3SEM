#encoding: utf-8
=begin
require "./logical5_2"
puts "input string"
str = gets
puts str
puts "after format"
puts format(str)
=end
def answer
  composition = 1
  array = ['2,3,4,5']
  puts array
  array.split(',')
  #@inputArray = array
  #array.map!{|x| x.to_i}
  puts array
  #lastEvenIndex = last_even(array)
  #array.each_index {|x| composition*=array[x] if (array[x]%7).zero?}
  #array[lastEvenIndex] = composition
  #@modifiedArray = array
end

def last_even(array)
  index = 0
  array.each_index {|x| index = x if array[x].even?}
  index
end