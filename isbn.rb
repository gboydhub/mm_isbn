def valid_isbn?(isbn)
  isbn_arr = isbn.split('')
  isbn_arr.reject! {|x| x=='-' || x==' '}
  isbn_sum = 0
  isbn_checkdigit = isbn_arr.pop

  if isbn_checkdigit.downcase == 'x'
    isbn_checkdigit = 10
  else
    isbn_checkdigit = isbn_checkdigit.to_i
  end

  if isbn_arr.length == 9
    isbn_arr.each_with_index do |digit, pos|
      isbn_sum += digit.to_i * (pos+1)
      #print "#{pos+1}x#{digit.to_i}, "
    end
    if isbn_sum % 11 == isbn_checkdigit
      return true
    end
  end
  false
end