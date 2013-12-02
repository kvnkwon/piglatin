require_relative 'translator'

puts "What would you like to translate?"
user_input = gets.chomp.downcase
translator = PigLatinTranslation.new(user_input)

puts "Your translated phrase: #{translator.translate}"