require_relative("./modifyBits");

def addBit (x,y)
    k = (x + y) % (2 ** 32)
    return k
end