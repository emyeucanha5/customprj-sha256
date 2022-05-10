require_relative("./modifyBits")

def xorThreeBits(x, y, z)
    ret = (x.to_i ^ y.to_i ^ z.to_i)
    # puts "xorThreeBits: " + modifyBits(ret,32)
    return ret
end
# xorThreeBits( 
#     0b11111110000000000000000001111111,
#     0b00000000000000000011111111111111,
#     0b11111111111111000000000000000000);