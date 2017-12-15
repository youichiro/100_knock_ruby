# encoding: utf-8

def typoglycemia(s)
    words = s.split(' ')
    ans = []
    words.each do |w|
        if w.length <= 4 then ans << w 
            else ans << w[0] + w[1..-2].split('').shuffle.join + w[-1]
        end
    end
    return ans
end

if __FILE__ == $0
    s = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
    ans = typoglycemia(s)
    puts ans.join(' ')
end
