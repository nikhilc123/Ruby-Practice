def even(list)
  even = []
  odd = []
  for items in list
    if items % 2 ==0
      even << items
    else
      odd << items
    end
  end
  puts "Even: #{even}"
  puts "Odd: #{odd}"
end
even([4,5,6,9,8])