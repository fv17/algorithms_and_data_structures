# http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_3_C

def main
  linked_list = LinkedList.new
  n = gets.to_i

  n.times do
    command = gets.split
    if command[1]
      linked_list.send(command[0], command[1].to_i)
    else
      linked_list.send(command[0])
    end
  end

  linked_list.print
end

class LinkedList
  def initialize
    @keys = []
  end

  def insert(key)
    @keys.unshift(key)
  end

  def delete(key)
    index = @keys.find_index(key)
    @keys.delete_at(index) if index
  end

  def deleteFirst
    @keys.shift
  end

  def deleteLast
    @keys.pop
  end

  def print
    puts @keys.join(" ")
  end
end

main

# n = gets.chomp.to_i
#
# linked_list = []
#
# n.times do
#   command, value = gets.chomp
#   value = value.to_i
#
#   if command == "insert"
#     linked_list.unshift(value)
#   elsif command == "delete"
#     linked_list.delete_at(linked_list.find_index(value))
#   elsif command == "deleteFirst"
#     linked_list.shift
#   elsif command == "deleteLast"
#     linked_list.pop
#   end
# end
#
# puts linked_list.joins(" ")
