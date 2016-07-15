class EulerSolver

  def sum_of_multiples(n, max)
    num_multiples = (max - 1) / n
    avg_multiple = ((num_multiples * n) + n) / 2.0
    num_multiples * avg_multiple
  end

  def euler_sum_multiples(n, m, max)
    sum_of_multiples(n, max) + sum_of_multiples(m, max) - sum_of_multiples(n*m, max)
  end
end
