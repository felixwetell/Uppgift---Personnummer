require 'pry'
require 'pry-byebug'

def valid_pnr(pnr:)

  total = 0
  array = pnr.split(//)
  numbers = array.map(&:to_i)
  numbers.delete_at(6)
  p numbers
  
end