n, q = gets.split.map(&:to_i)
queue = []
total_time = 0

n.times do
  queue.push(gets.split)
end

while !queue.empty? do
  process = queue.shift

  name = process[0]
  time = process[1].to_i

  if time <= q
    total_time += time
    puts "#{name} #{total_time}"
  else
    total_time += q
    queue.push([name, time - q])
  end
end
