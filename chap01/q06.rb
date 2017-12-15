require './q05.rb'

s1 = 'paraparaparadise'
s2 = 'paragraph'

ngram1 = char_ngram(s1, 2)
ngram2 = char_ngram(s2, 2)

print "X: ", ngram1.keys, "\n"
print "Y: ", ngram2.keys, "\n"
print "和集合: ", ngram1.keys | ngram2.keys, "\n"
print "差集合: ", ngram1.keys - ngram2.keys, "\n"
print "積集合: ", ngram1.keys & ngram2.keys, "\n"

if ngram1.keys.include?("se") then
    puts "Xにseが含まれる"
else
    puts "Xにseが含まれない"
end

if ngram2.keys.include?("se") then
    puts "Yにseが含まれる"
else
    puts "Yにseが含まれない"
end
