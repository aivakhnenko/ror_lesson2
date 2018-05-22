vowels = Hash[(:a..:z).to_a.zip((1..26).to_a)].select { |k, v| k.to_s.scan(/[aeiou]/).count != 0 }
