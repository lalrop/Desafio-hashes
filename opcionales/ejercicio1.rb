a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1

a1 = a.map{ |i| i+1 }
puts a1

# 2

a2 = a.map{ |i| i.to_f}
puts a2

# 3

a3 = a.map{ |i| i.to_s}
puts a2

# 4

a4 = a.reject { |i| i < 5}
puts a4

# 5

a5 = a.select { |i| i < 5}
puts a5

# 6

a6 = a.inject(0) {|sum,i| sum = sum + i}
puts a6

# 7
a_par = a.group_by{|i| i%2 == 0}
puts a_par

8
a_6 = a.group_by{|i| i >= 6}
puts a_6
