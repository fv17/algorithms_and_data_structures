inputs = gets.chomp.split
stack = []

inputs.each do |element|
  if element =~ /\A\d+\z/
    # 数値の場合、Stackにpush
    stack.push(element.to_i)
  else
    # 演算子の場合、Stackから2つpopし計算。その後、結果をpush
    b = stack.pop
    a = stack.pop
    result = a.method(element).(b)
    stack.push(result)
  end
end

puts stack.pop
