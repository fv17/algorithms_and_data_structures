def main
  n = gets.to_i
  s = gets.split.map(&:to_i)
  q = gets.to_i
  t = gets.split.map(&:to_i)

  # ##############################
  # Rubyの標準ライブラリを用いた実装
  # ##############################

  # count = t.inject(0) do |result, value|
  #   result += 1 if s.include?(value)
  #   result
  # end
  #
  # puts count

  # ##############################
  # 番兵を用いた効率的なアルゴリズム
  # ##############################

  count = t.inject(0) do |result, value|
    result += 1 if linear_search(s, value)
    result
  end

  puts count
end

def linear_search(array, value)
  i = 0
  size = array.size
  array[size] = value

  while array[i] != value
    i += 1
  end

  return i != size
end

main
