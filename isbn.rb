def valid_isbn?(isbn)
  isbn_arr = isbn.split('')
  isbn_sum = 0
  isbn_checkdigit = isbn_arr.pop.to_i

  isbn_arr.each_with_index do |digit, pos|
    isbn_sum += digit.to_i * (pos+1)
    #print "#{pos+1}x#{digit.to_i}, "
  end
  if isbn_sum == 0
    return false
  end

  #print "\nSum: #{isbn_sum}, Rm: #{isbn_sum%11}, Dig: #{isbn_checkdigit}\n"
  if isbn_sum % 11 == isbn_checkdigit
    return true
  end

  false
end