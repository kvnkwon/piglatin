require 'pry'
class PigLatinTranslation
  def initialize(phrase)
    @phrase = phrase
    @vowels = ['a','e','i','o','u']
  end

  #provide the pig latin translation
  def translate
    translation = ''
    words.each do |word|
      if starts_with_vowel?(word)
        translation << "#{word}way "
      else
        translation << "#{word[1,word.size-1]}#{word[0]}ay "
      end
    end
    translation
  end

  private
  #an array of words in the phrase
  def words
    @phrase.split(' ')
  end

  def starts_with_vowel?(word)
    @vowels.include?(word[0])
  end

end

