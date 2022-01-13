# # frozen_string_literal: true
#
# # Write your code for the 'Word Count' exercise in this file. Make the tests in
# # `@word_count_test.rb` pass.
# #
# # To get started with TDD, see the `README.md` file in your
# # `ruby/word-count` directory.
# class Phrase
#   def initialize(string)
#     @string = string
#   end
#
#   def @word_count
#     @string.scan(/\w+[a-zA-Z0-9]'t|\w+/)
#            .group_by(&:downcase)
#            .transform_values(&:length)
#   end
# end
#
# contador_palabras = {}
#
# palabras_dividas = phrase.split(" ")
#
# palabras_dividas.each do |palabra|
#   unless contador_palabras[palabra].nil?
#     contador_palabras[palabra] = contador_palabras[palabra] + 1
#   else
#     contador_palabras[palabra] = 1
#   end
# end
#
# contador_palabras = {}
#
# palabras_dividas = phrase.split(" ")
#
# palabras_dividas.each do |palabra|
#   contador_palabras[palabra] = unless contador_palabras[palabra].nil?
#                                  contador_palabras[palabra] + 1
#                                else
#                                  1
#                                end
# end
#
# contador_palabras = {}
#
#
# phrase.split(" ").each do |palabra|
#   contador_palabras[palabra] = unless contador_palabras[palabra].nil?
#                                  contador_palabras[palabra] + 1
#                                else
#                                  1
#                                end
# end
#

class Phrase
  attr_accessor :word_count

  def initialize(phrase = '')
    @word_count = {}
    phrase.gsub(',', " ").split(' ').each do |word|
      w = word.strip.gsub(/\W/, '').downcase
      @word_count[w] = @word_count[w] ? @word_count[w] + 1 : 1
    end
    @word_count
  end
end
