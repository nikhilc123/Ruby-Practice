def count_in_list(list, num)
  count = 0
  for item in list
    if item == num
      count += 1
    end
  end
  return count
end

p count_in_list([1,2,3,5], 6)