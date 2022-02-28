class Node
    
  attr_accessor :data, :next, :prev

  def initialize(data)
      @data = data
      @next = nil
      @prev = nil
  end
end

class DoublyLinkedList
  attr_accessor :head, :tail, :length 

  def initialize()
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(value)
    new_node = Node.new(value)
    if @length == 0
      @head = new_node
      @tail = new_node
    else
      @tail.next = new_node
      new_node.prev = @tail
      @tail = new_node
    end
    @length += 1
    return self
  end

  def shift()
    old_head = @head
    return nil if @length == 0
    if @length == 1
      @tail = nil
      @head = nil
    else
      @head = old_head.next
      @head.prev = nil
      old_head.next = nil
    end
    @length -= 1
    return old_head.data
  end
  
  def pop()
    old_tail = @tail
    return nil if @length == 0
    if @length == 1
      @tail = nil
      @head = nil
    else
      @tail = old_tail.prev
      @tail.next = nil
      old_tail.prev = nil
    end
    @length -= 1
    return old_tail.data
  end

  def unshift(value)
    new_node = Node.new(value)
    if !@head
      @head = new_node
      @tail = new_node
    else
      @head.prev = new_node
      new_node.next = @head
      @head = new_node
    end
    @length += 1
    return @head
  end

  def get(index)
    return nil if index < 0 || index > @length
    i = 0
    current = @head
    while i < @length do
      current = current.next
      i += 1
    end
    return current
  end


end

list = DoublyLinkedList.new
puts list.push(1)
puts list.push(12)
puts list.push(3)

a = list.get(1)
list.push(a)
puts list

# puts list.pop
# puts list.shift

# puts list.unshift(10)
# puts list.shift

# node1 = Node.new(-1)

# node2 = Node.new(8)
# node1.next = node2

# node = node1
# while(node) do
#   puts node.data
#   node = node.next
# end