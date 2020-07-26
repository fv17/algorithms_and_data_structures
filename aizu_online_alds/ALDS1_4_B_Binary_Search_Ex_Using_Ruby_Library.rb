# http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_4_B&lang=ja

n = gets.chomp.to_i
s = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i
t = gets.chomp.split.map(&:to_i)

count = 0

t.each do |value|
  count += 1 if s.include?(value)
end

puts count
