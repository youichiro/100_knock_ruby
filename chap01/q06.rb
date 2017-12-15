require './q05.rb'

s1 = 'paraparaparadise'
s2 = 'paragraph'

ngram1 = char_ngram(s1, 2)
ngram2 = char_ngram(s2, 2)

print "和集合 ", ngram1.keys | ngram2.keys, "\n"
print "差集合 ", ngram1.keys - ngram2.keys, "\n"
print "積集合 ", ngram1.keys & ngram2.keys, "\n"
