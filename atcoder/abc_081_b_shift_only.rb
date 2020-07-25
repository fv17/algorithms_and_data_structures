n = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i)

count = 0

catch(:break) do
  loop do
    numbers = numbers.map do |number|
      if number.even?
        number / 2
      else
        throw :break
      end
    end
    count += 1
  end
end

puts count
