fibo = [0, 1]

i = 2

while true do
  fibo_next = fibo[i - 2] + fibo[i - 1]
  break if fibo_next > 100
  fibo[i] = fibo_next
  i += 1
end
