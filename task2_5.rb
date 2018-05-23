print "Enter day:   "
day = gets.to_i

print "Enter month: "
month = gets.to_i

print "Enter year:  "
year = gets.to_i

months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months[2] = 29 if (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))

result = day + months[0..(month - 1)].inject(:+)
