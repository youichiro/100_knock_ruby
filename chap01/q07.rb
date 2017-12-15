# encording: utf-8

def wheather(x, y, z)
    return x.to_s + '時の' + y.to_s + 'は' + z.to_s
end

puts wheather(12, "気温", 22.4)
