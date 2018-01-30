require './logical7_1'
amount_of_numbers = 40
File.open('lab7_1.txt', 'w') do |_f|
  amount_of_numbers.times do |i|
    buf = rand(1000) + 1
    buf *= -1 unless (i / 10).even?
    _f.puts buf.to_s
  end
end
dateWorker
