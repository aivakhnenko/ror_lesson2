puts "Enter date (dd.mm.yyyy):"
date = gets.chomp

date_split = date.split(".").map { |s| s.to_i }

day   = date_split[0]
month = date_split[1]
year  = date_split[2]

result = day +
  (month >  1 ? 1 : 0) * 31 + 
  (month >  2 ? 1 : 0) * (
                          year %   4 != 0 ? 28 : 
                          year % 100 != 0 ? 29 : 
                          year % 400 != 0 ? 28 : 29
                         )  + 
  (month >  3 ? 1 : 0) * 31 + 
  (month >  4 ? 1 : 0) * 30 + 
  (month >  5 ? 1 : 0) * 31 + 
  (month >  6 ? 1 : 0) * 30 + 
  (month >  7 ? 1 : 0) * 31 + 
  (month >  8 ? 1 : 0) * 31 + 
  (month >  9 ? 1 : 0) * 30 + 
  (month > 10 ? 1 : 0) * 31 + 
  (month > 11 ? 1 : 0) * 30
