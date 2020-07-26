n = gets.to_i
a = gets.split.map(&:to_i)

puts a.join(" ")

i = 1

while (i < a.count) do
  v = a[i]
  j = i - 1
  while (j >= 0 && a[j] > v) do
    a[j + 1] = a[j]
    j = j - 1
  end
  a[j + 1] = v
  i = i + 1

  puts a.join(" ")
end
