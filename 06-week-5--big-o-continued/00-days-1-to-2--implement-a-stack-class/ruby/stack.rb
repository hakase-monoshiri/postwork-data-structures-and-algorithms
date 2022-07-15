class Stack
  attr_reader :limit

  def initialize
    @stack = []
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
    @limit = 10
  end

  # add item to top of stack if not full
  # if full, throw error
  def push(item)
    if @stack.length < @limit
      @stack << item
    else
      throw "Stack Overflow"
    end
  end

  # remove item from top of stack and return it
  def pop
   @stack.pop
  end

  # return item at top of stack without removing it
  def peek
    @stack[-1]
  end

  # return true if stack is empty, otherwise false
  def isEmpty?
    @stack.length <= 0 ? true : false
  end

  # return true if stack is full, otherwise false
  def isFull?
    @stack.length == @limit ? true : false
  end

  # return number of items in stack
  def size
    @stack.length
  end

  # return -1 if item not in stack, otherwise integer representing 
  # how far it is from the top
  def search(target)

    stack = @stack
    
    stack.each_with_index do |item, idx|
      if  item == target
        return stack.length - idx - 1
      end
    end

    return -1
  end

  # print contents of stack: do not return the stack itself!
  def print
    print_stack = @stack

    while print_stack.length > 0
      puts( print_stack.pop.to_s)
    end

  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
end

