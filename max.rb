def max(list)
  num = list.first
  list.each do |item|
    if item > num
      num = item
    end
  end
  return num
end

puts max([1, 30, -1, 8, 5])