# encoding: utf-8

def cipher(s, mode)
    str = []
    if mode == "encode" then
        s.each_char do |c|
            if /[a-z]/.match(c) then str << 219 - c.ord  else str << c end
        end
    elsif mode == "decode" then
        dec_targets = []
        i = 1
        s.each_char do |c|
            if /[\d]/.match(c)
                dec_targets << c
                c = i % 3 == 0 ? "@" : "" ; i += 1
            end
            str << c if !c.empty?
        end
        dec_targets = dec_targets.join.scan(/.{1,3}/).map{ |n| (219 - n.to_i) }.pack("U*").split("")
        i,j = 0,0
        str.each do |c|
            if c == "@"
                str[i] = dec_targets[j]; j+= 1
            end
            i += 1
        end
    end

    return str.join
end

if __FILE__ == $0
    s = "ABCabcABCabc"
    res = cipher(s, "encode")
    puts res

    s = "ABC122121120ABC122121120"
    res = cipher(s, "decode")
    puts res
end
