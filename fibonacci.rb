

def fib_iter(num) 
    total = []
    for i in 1..num
      if i == 1 
          total.push(0)
      elsif i == 2
          total.push(1)
      else
          total.push(total[-1] + total[-2])
      end
    end
    return total
end

