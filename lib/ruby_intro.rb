# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |x|
    result += x
  end
  return result
end

def max_2_sum arr

  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end

  largest = arr[0]
  second_largest = arr[1]
  2.upto arr.length-1 do |x|
    curr = arr[x]
    if curr > largest
      second_largest = largest
      largest = curr
    elsif curr > second_largest
      second_largest = curr
    end
  end
  result = largest + second_largest
end

def sum_to_n? arr, n
  track = [].to_set
  arr.each do |x|
    if track.include? x
      return true
    end
    track.add n - x
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  s =~ /\A[01]+\z/ && s =~ /\A([01]*00|0*)\z/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new "ISBN should not be empty" if isbn.to_s.strip.empty?
    raise ArgumentError.new "price should be positive" if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    "$%0.2f" % [@price]
  end
end
