def sum(list)
  total = 0
  list.each do |item|
    total += item
  end
  return total
end

p sum([1, 2, -3, 4, 4])