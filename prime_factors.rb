require 'pry'

def prime_factors(num, prime_factors=[])
  if num <= 1
    return prime_factors
  elsif isPrime?(num)
    prime_factors << num
  else
    i = 2
    while i <= Math.sqrt(num)
      # binding.pry
      if num % i == 0
        prime_factors << i
        return prime_factors(num/i, prime_factors)
      end
      i +=1
    end
  end
  return prime_factors
end

def isPrime?(num)
  for i in 2..num-1
    return false if num % i == 0
  end
  true
end

num = ARGV[0].to_i

p prime_factors(num)