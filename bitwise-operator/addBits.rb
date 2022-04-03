require_relative("./modifyBits");

def addBit (x,y)
    k = (x + y) % (2 ** 32)
    # k = k.to_s(2)
    # puts "addBit " + modifyBits(k)
    return k
end
# y = 0b00000100000000000000000000000000
# x = 0b00000000000000000011111111111111 

# puts addBit(x,y);