def count_max(list)
  max = list.first
  count = 0
  for item in list
    if item > max
      max = item
      count += 1
    end
  end
  return count
end

p count_max([10, 20, 10, 10])