ar = ['one','twwo','te','fodsfsur','fiasdfasdfve']
long = ar.max_by(&:length) # => "three"
puts long

short = ar.min_by(&:length)
puts short