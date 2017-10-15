def char(string)
  total_char = string.chars.to_a
  len = string.length
  rev = []
  for i in (len-1).downto(0)
    rev << total_char[i]
    convert = rev.join()
  end
  if convert.downcase.eql?(string.downcase)
    puts "Palindrome"
  else
    puts "Not a Palindrome"
  end
end

puts char("Anna")