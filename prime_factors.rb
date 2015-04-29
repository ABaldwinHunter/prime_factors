require 'pry'

def prime_factors(num, prime_factors=[])
  if num <= 1
    return prime_factors
  elsif isPrime?(num)
    prime_factors << num
  else
    for i in 2..Math.sqrt(num).to_i
      if num % i == 0
        prime_factors << i
        return prime_factors(num/i, prime_factors)
      end
    end
  end
end

def isPrime?(num)
  for i in 2..num-1
    return false if num % i == 0
  end
  true
end

num = ARGV[0].to_i

p prime_factors(num)