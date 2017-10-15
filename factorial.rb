def factorial(num)
  (1..num).inject{|product, num| product * num}
end

puts factorial(5)