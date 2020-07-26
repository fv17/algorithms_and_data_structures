# http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_4_B&lang=ja

n = gets.chomp.to_i
s = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i
t = gets.chomp.split.map(&:to_i)

count = 0

t.each do |value|
  left = 0
  right = n

  while (left < right) do
    mid = (left + right) / 2
    if s[mid] == value
      count += 1
      break
    elsif s[mid] > value
      right = mid
    elsif s[mid] < value
      left = mid + 1
    end
  end
end

puts count
