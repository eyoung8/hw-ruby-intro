# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.map { |num| sum+=num }
  return sum
end

def max_2_sum arr
  if arr.empty? 
    return 0
  elsif arr.size == 1
    return arr[0]
  end
  max1 = arr.max
  arr.delete_at(arr.index(max1))
  max2 = arr.max
  return max1 + max2
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  (0...arr.length).each do |i|
    (i...arr.length).each do |num|
      if num != i and arr[num] + arr[i] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.downcase!
    consonant_hash = {
      "b" => true,
      "c" => true,
      "d" => true,
      "f" => true,
      "g" => true,
      "h" => true,
      "j" => true,
      "k" => true,
      "l" => true,
      "m" => true,
      "n" => true,
      "p" => true,
      "q" => true,
      "r" => true,
      "s" => true,
      "t" => true,
      "v" => true,
      "w" => true,
      "x" => true,
      "y" => true,
      "z" => true
    }
  begin
    if consonant_hash[s[0]]
      return true
    end
  rescue KeyError => e
    return false
  end
  false
end

# class RandomException < Exception
# raise RandomException 'test exception'

def binary_multiple_of_4? s
  begin
   Integer(s, 10) % 4 == 0
    rescue ArgumentError => e
      return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize isbn, price
    @isbn = isbn
    @price = price
    if price <= 0
      raise ArgumentError, "price was below $0.00"
    end
    if isbn == ""
      raise ArgumentError, "isbn was empty"
    end
  end
  
  def price_as_string
    string_price = @price.to_s
    string_price_split = @price.to_s.split(".")
    if string_price_split.size == 2
      if @price.to_s.split(".")[1].size == 1
        string_price += "0"
      end
    elsif string_price_split.size == 1
      string_price += ".00"
    end
    return "$#{string_price}"
  end
end
