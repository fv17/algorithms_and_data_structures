# http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_4_A&lang=ja

n = gets.chomp.to_i
s = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i
t = gets.chomp.split.map(&:to_i)

total_count = 0

t.each do |value|
  total_count += 1 if s.find { |x| x == value }
end

puts total_count
