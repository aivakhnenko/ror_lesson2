fibo = [0 ,1]

(2..100).each { |i| fibo[i] = fibo[i - 2] + fibo[i - 1] }
