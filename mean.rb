def mean(list)
  len = list.size
  list.inject{|first, second| first + second / len}.to_f
end

p mean([1,2,3])