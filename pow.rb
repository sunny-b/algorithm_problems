def my_pow(x, n)
  if n.zero?
    return 1
  elsif n < 0
    return my_pow(1.0 / x, n.abs)
  end

  n.odd? ? x * my_pow(x * x, n / 2) : my_pow(x * x, n / 2)
end

my_pow(0.00001, 2147483647)
