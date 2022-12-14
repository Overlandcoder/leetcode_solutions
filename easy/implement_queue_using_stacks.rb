# https://leetcode.com/problems/implement-queue-using-stacks/

class MyQueue
  def initialize()
    @s1 = []
    @s2 = []
  end

  def push(x)
    while @s1.length > 0
      @s2 << @s1.pop
    end

    @s1 << x

    while @s2.length > 0
      @s1 << @s2.pop
    end
  end

  def pop()
    @s1.pop
  end

  def peek()
    @s1.last
  end

  def empty()
    @s1.length == 0
  end
end
