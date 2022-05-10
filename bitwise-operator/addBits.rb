require_relative("./modifyBits");

def addBit (x,y)
    ret = (x + y) % (2 ** 32)
    # puts "addBit " + modifyBits(ret,32)
    return ret
end
# addBit(
#     0b1111111111111100000000000000,
#     0b00000000000000000011111111111111);