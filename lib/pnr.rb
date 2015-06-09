require 'pry'
require 'pry-byebug'

# def valid_pnr?(pnr:)
#   raise ArgumentError if pnr.empty?
#
#   sum  = 0
#   numbers = pnr.delete '-'
#   numbers1 = numbers.split(//).map {|n| n.to_i}
#   sum += numbers1[-1]
#   numbers1.pop
#
#   numbers1.each_with_index do |value, index|
#     if index % 2 == 0
#       if value > 5
#         number = 2 * value - 9
#         sum += number
#       else
#         sum += 2 * value
#       end
#     else
#       sum += value
#     end
#
#   end
#   if sum % 10 == 0
#     return true
#   else
#     return false
#   end
#
# end

def generate_pnr(birth_county:, birth_year:, sex:)
  number = rand(0..99)
  county = {
  'Stockholm' => rand(00..13),
  'Kristianstad' => rand(35..38),
  'Kopparberg' => rand(71..73),
  'Uppsala' => rand(14..15),
  'Malmöhus' => rand(39..45),
  'Gävleborg' => rand(75..77),
  'Södermanland' => rand(16..18),
  'Halland' => rand(46..47),
  'Västernorrland' => rand(78..81),
  'Östergötland'  => rand(19..23),
  'Västra Götaland' => rand(48..54),
  'Jämtland' => rand(82..84),
  'Jönköping' => rand(24..26),
  'Älvsborg' => rand(55..58),
  'Västerbotten' => rand(85..88),
  'Kronoberg' => rand(27..28),
  'Skaraborg' => rand(59..61),
  'Norrbotten' => rand(89..92),
  'Kalmar' => rand(29..31),
  'Värmland' => rand(62..64),
  'Gotland' => rand(32),
  'Örebro' => rand(66..68),
  'Blekinge' => rand(33..34),
  'Västmanland' => rand(69..70)
  }

  raise ArgumentError if birth_year < 0 or birth_year > 99
  raise ArgumentError if birth_county.empty?
  raise ArgumentError if county.include? birth_county
  raise ArgumentError if sex != 'male' or 'female'

  if sex == 'male'
    sex = number % 2 == 0
  else
    sex
  end
  pnr = birth_year.to_i + birth_county.to_i + sex
  p pnr


end

p generate_pnr(birth_year: 32, birth_county: 'Stockholm', sex: 'female')