def roman_to_int(s)
  sum = 0
  roman_numerals = s.split("")
  pairs = []
  i = 0

  values_hash = {
      I: 1,
      V: 5,
      X: 10,
      L: 50,
      C: 100,
      D: 500,
      M: 1000
  }

  while i < (roman_numerals.length)
    pair = "#{roman_numerals[i]}#{roman_numerals[i + 1]}"
    if i + 1 < roman_numerals.length && values_hash[roman_numerals[i].to_sym] < values_hash[roman_numerals[i + 1].to_sym]
      sum -= values_hash[roman_numerals[i].to_sym]
    else
      sum += values_hash[roman_numerals[i].to_sym]
    end
    i += 1
  end
  sum
end
p roman_to_int("MCMXCIV")
