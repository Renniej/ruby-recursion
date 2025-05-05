

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

def fib_rec(num, totals = [])
  return totals if num == 0
  if totals.empty?
    return fib_rec(num - 1, [0])
  elsif totals.length == 1
    return fib_rec(num -1, [0,1])
  else 
    return fib_rec(num-1, totals.push( totals[-1] + totals[-1-1] ))
  end
end

puts fib_rec(8).join(" , ")
puts fib_iter(8).join(" , ")