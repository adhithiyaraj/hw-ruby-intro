# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans=arr.inject(0, :+)
  return ans
end

def max_2_sum arr
  ans=arr.sort.last(2).sum
  return ans
end

def sum_to_n? arr, n
  return(!!arr.uniq.combination(2).detect { |x, y| x + y == n })
end

# Part 2

def hello(name)
  ans= "Hello, "+ name
  return(ans)
end

def starts_with_consonant?(s)
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3
class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
      if isbn.length > 0 && price > 0
        @isbn = isbn
        @price = price
      else
        raise ArgumentError
      end
  end
  
  #getter for ISBN
  def isbn
    return @isbn
  end
  
  #setter for ISBN
  def isbn=(nisbn)
    @isbn = nisbn
  end
  
  #getter for price
  def price
    @price
  end
  
  #setter for price
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    "$"+ '%.2f' % @price.round(2).to_s
  end

end