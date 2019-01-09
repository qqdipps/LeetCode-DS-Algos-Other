# @param {String[]} words
# @return {Integer}
require 'set'
def unique_morse_representations(words)
    alpha_morse = {:a => ".-",
                    :b => "-...",
                    :c => "-.-.",
                    :d => "-..",
                    :e => ".",
                    :f => "..-.",
                    :g => "--.",
                    :h => "....",
                    :i => "..",
                    :j => ".---",
                    :k => "-.-",
                    :l => ".-..",
                    :m => "--",
                    :n => "-.",
                    :o =>"---",
                    :p => ".--.",
                    :q => "--.-",
                    :r => ".-.",
                    :s => "...",
                    :t => "-",
                    :u => "..-",
                    :v => "...-",
                    :w => ".--",
                    :x => "-..-",
                    :y => "-.--",
                    :z => "--.."}
     morse_set = Set.new
     words.each do |word| 
          word_morse = String.new
          word.each_char do |char| 
               char = alpha_morse[char.to_sym]
               word_morse += char
          end
         morse_set << word_morse
     end
    return morse_set.length
end
words = ["wiw", "gig", "big", "bot"]
p unique_morse_representations(words)
