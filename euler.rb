require 'byebug'

class EulerSolver

  def sum_of_multiples(n, max)
    num_multiples = (max - 1) / n
    avg_multiple = ((num_multiples * n) + n) / 2.0
    num_multiples * avg_multiple
  end

  def euler_sum_multiples(n, m, max)
    sum_of_multiples(n, max) + sum_of_multiples(m, max) - sum_of_multiples(n*m, max)
  end

  def sum_even_fibs_below(n)
    evens = [2, 8]
    sum = 10
    while evens.last < n
      next_fib = evens.last * 4 + evens[-2]
      evens << next_fib
      sum += next_fib
    end
    evens
  end

  def largest_prime(n)
    return 1 if n == 1

    (2...(n ** (0.5)).ceil).to_a.each do |i|
      if n % i == 0
        return largest_prime(n/i)
      end
    end

    return n
  end

end

e = EulerSolver.new
p e.largest_prime(600851475143)
# 1471 6857
#p e.sum_even_fibs_below(4000000)
