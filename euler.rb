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

end

e = EulerSolver.new

p e.sum_even_fibs_below(4000000)

# git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Michael Parlato'; GIT_AUTHOR_EMAIL='michaelvparlato@gmail.com'; GIT_COMMITTER_NAME='Michael Parlato
# '; GIT_COMMITTER_EMAIL='michaelvparlato@gmail.com';" HEAD
