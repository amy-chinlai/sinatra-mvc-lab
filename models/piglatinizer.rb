class PigLatinizer

    def piglatinize(string)
        words = string.split(" ")
        separated_words = words.map {|w| piglatinize_word(w)}
        separated_words.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0]

        if first_letter == "A" || first_letter == "a"|| first_letter == "e" || first_letter == "E" || first_letter == "I" || first_letter == "i" || first_letter == "O" || first_letter == "o" || first_letter == "U" || first_letter == "u"
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end

            
        
        
        # first_letter = word[0].downcase

        # if first_letter == /[aeiou]/
        #    "#{word}way"
        # else
        #     consonants = []
        #     consonants << word[0]

        #     if word[1] == /[aeiou]/
        #         consonants << word[1]

        #         if word[2] == /[aeiou]/
        #             consonants << word[2]
        #         end
        #     end
        #     "#{word[consonants.length..-1] + consonants.join + "ay"}"
        # end
    end
end