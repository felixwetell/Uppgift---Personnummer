require 'pry'
require 'pry-byebug'

def valid_pnr?(pnr:)

  total = 0
  numbers = pnr.each_char.map {|c| c.to_i}
  if numbers.empty?
    raise ArgumentError
  end

  if numbers.length != 11

    return false

  else

    numbers.delete_at(6)
    total += numbers[-1]
    numbers.delete_at(-1)

    while numbers.length != 0
      if numbers[0] > 5
        numbers[0] *= 2
        numbers[0] -= 9
        total += numbers[0]
      else
        total += numbers[1]
      end
      numbers.delete_at(0)
      numbers.delete_at(1)

    end

  end

  if total % 10 == 0
    return true
  else
    return false
  end

end

p valid_pnr?(pnr: " ")