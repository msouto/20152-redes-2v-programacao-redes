t1 = Time.now
t2 = t1 + 3600
puts t1 <=> t2   #-1
puts t2 <=> t1   #1
puts t1 <=> t1   #0
puts t2 == t2    #true
puts t1 >= t2    #false
puts t1 < t2     #true
