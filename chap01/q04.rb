# encoding: utf-8
s = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
words = s.split(' ')
hash = {}
for i in 0..words.length-1 do
    if [0,4,5,6,7,8,14,15,18].include?(i) then
        hash[words[i][0]] = i+1
    else
        hash[words[i][0..1]] = i+1
    end
end
puts hash
