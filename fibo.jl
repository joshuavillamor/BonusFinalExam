function fibonacci(n)
    # if n is 0 or 1
    if n == 0 || n == 1
  
    # return n
      return n
    else
    # calculate the nth fibonacci number
      return fibonacci(n-1) + fibonacci(n-2)
    end
  end
  
  n = 10
  
  result = fibonacci(n)
  
  println(result)