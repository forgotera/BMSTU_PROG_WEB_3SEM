def format(str)
  str.split.inject([]) do |arrayWord, buf|
    arrayWord << buf.gsub(/\Ah/, 't').gsub(/o\Z/, 'e')
  end.join(' ')
end
