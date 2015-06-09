require 'pry'
require 'pry-byebug'

def valid_pnr?(pnr:)
  raise ArgumentError if pnr.empty?

  sum  = 0
  numbers = pnr.delete '-'
  numbers1 = numbers.split(//).map {|n| n.to_i}
  sum += numbers1[-1]
  numbers1.pop

  numbers1.each_with_index do |value, index|
    binding.pry
    if index % 2 == 0
      if value > 5
        number = 2 * value - 9
        sum += number
      else
        sum += 2 * value
      end
    else
      sum += value
    end

  end
  if sum % 10 == 0
    return true
  else
    return false
  end

end

# p valid_pnr?(pnr: '811218-9876')