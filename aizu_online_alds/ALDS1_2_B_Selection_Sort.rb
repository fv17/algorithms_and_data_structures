n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
count = 0

while (i < n) do
  j = i
  minj = i

  while (j < n) do
    # 未ソート部分から最小値を探す
    minj = j if a[minj] > a[j]
    j += 1
  end

  # 未ソートの先頭と最小値を交換する
  if minj != i
    a[i], a[minj] = a[minj], a[i]
    count += 1
  end

  i += 1
end

puts a.join(" ")
puts count
