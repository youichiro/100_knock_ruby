# encoding: utf-8
def word_ngram(s, n)
    words = s.split(' ')
    hash = {}
    hash.default = 0
    for i in 0..words.length-n do
        ngram = []
        for j in 0..n-1 do
            ngram.push(words[i+j])
        end
        hash[ngram.join(' ')] += 1
    end
    return hash
end

def char_ngram(s, n)
    chars = s.gsub(/ /, '').split('')
    hash = {}
    hash.default = 0
    for i in 0..chars.length-n do
        ngram = []
        for j in 0..n-1 do
            ngram.push(chars[i+j])
        end
        hash[ngram.join(' ')] += 1
    end
    return hash
end


if __FILE__ == $0
    s = 'I am an NLPer'
    ngrams = word_ngram(s, 2)
    puts ngrams

    ngrams = char_ngram(s, 2)
    puts ngrams
end
