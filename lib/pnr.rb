require 'pry'
require 'pry-byebug'

def valid_pnr?(pnr:)

  total = 0
  array = pnr.split(//)
  numbers = array.map { |c| c.to_i }

  if numbers.empty?
    raise ArgumentError
  end

  if numbers.length != 11

    return false

  else

    total += numbers[-1]
    numbers.delete_at(-1)

    numbers.each_index  |in|
      number
    end

  end

  p total

  if total % 10 == 0
    true

  else
    false

  end

end

p valid_pnr?(pnr: '781206-4613')