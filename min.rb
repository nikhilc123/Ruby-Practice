def min(list)
  min = list.first
  ligst.each do |item|
    if item < min
      min = item
    end
  end
  return min
end

puts min([1, 5, -1, 0,  8, 3])