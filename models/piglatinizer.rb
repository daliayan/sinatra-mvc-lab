class PigLatinizer

    def piglatinize(string_value)
        string_value.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(letter)
        letter.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            remainder = word.slice(vowel_index..word.length)
            remainder + consonants + "ay"
        end
    end


end