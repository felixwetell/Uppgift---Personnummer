require 'pry'
require 'pry-byebug'

def valid_pnr(pnr:)

  total = 0
  array = pnr.split(//)
  numbers = array.map(&:to_i)
  numbers.delete_at(6)
  p numbers

  if numbers.length != 10

    return false

  else
    numbers.length == 10

    total << numbers[-1]

    while numbers.length != 0
      p numbers

      numbers[0] *= 2
      numbers[0] -= 9
      total << numbers[0]
      numbers.delete_at(0)
      total << numbers[1]
      numbers.delete_at(1)

    end
    p total
  end

end

valid_pnr(pnr: "012345-6789")