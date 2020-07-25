n, k = gets.chomp.split.map(&:to_i)
scores = gets.chomp.split.map(&:to_i)

n, k = [15 ,7]
scores = [3 ,1 ,4 ,1 ,5 ,9 ,2 ,6 ,5 ,3 ,5 ,8 ,9 ,7 ,9]

# (n - k).times do |x|
#   target_score = 1
#   k.times do |y|
#     target_score = target_score * scores[k + x - y]
#   end
#
#   previous_score = 1
#   k.times do |z|
#     previous_score = previous_score * scores[k + x - z - 1]
#   end
#
#   if target_score > previous_score
#     puts "Yes"
#   else
#     puts "No"
#   end
# end

(n - k).times do |x|
  if scores[k + x] > scores[x]
    puts "Yes"
  else
    puts "No"
  end
end
