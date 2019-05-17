# Stack: Last-In, First-Out 

class Stack
  def initialize
    @stack
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.pop
    @stack
  end

  def peek 
    @stack.last
  end
end

s = Stack.new 
s.push(1) # @stack: [1]
s.push(2) # @stack: [1, 2]
s.push(3) # @stack: [1, 2, 3]
s.peek # 3

