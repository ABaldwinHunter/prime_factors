var primeFactorization = function(num, primeFactors) {
  var primeFactors = primeFactors || [];
  if (num <= 1) {
    return primeFactors;
  } else if (isPrime(num)) {
    primeFactors.push(num);
  } else {
    for (var n=2; n <= Math.sqrt(num); n++) {
      if (num%n == 0) {
        primeFactors.push(n);
        return primeFactorization(num/n, primeFactors)
      }
    }
  }
  return primeFactors;
}

var isPrime = function(num){
  for (var i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true
}

// examples:
// input: primeFactorization(9)
// output: [3, 3]
// input: primeFactorization(250)
// output: [2, 5, 5, 5]
// input: primeFactorization(90)
// output: [2, 3, 3, 5]



console.log(primeFactorization(9))
console.log(primeFactorization(25))
console.log(primeFactorization(70))
console.log(primeFactorization(250))
console.log(primeFactorization(451*451))