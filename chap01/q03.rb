# encoding: utf-8
s = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
words = s.split(' ').each {|w|
	w.gsub!(/[,.]/, '')
}
arr = words.map {|w|
	w.length
}
print(arr)
