# Queue follows FIFO principle

class Queue
  attr_reader :queue

  def initialize
    @queue = [] 
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue(el)
    @queue.shift
  end

  def peek
    @queue.last
  end
end
