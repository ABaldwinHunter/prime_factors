def prime_factors(num)
  factors = []
  if num < 1
    return []
  elsif num == 2
    return [2]
  else
    n = 2
    while num < Math.sqrt(num)
      if num % n == 0
        factors << n
        factors << prime_factors(num/n)
        return factors
      end
      n +=1
    end
  end
end

num = ARGV[0].to_i

p prime_factors(num)