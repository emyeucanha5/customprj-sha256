require_relative("./modifyBits");

def addBit (x,y)
    ret = (x + y) % (2 ** 32)
    return ret
end

def xorThreeBits(x, y, z)
    ret = (x.to_i ^ y.to_i ^ z.to_i)
    return ret
end