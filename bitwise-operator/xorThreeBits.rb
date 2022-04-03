require_relative("./modifyBits")
def xorThreeBits(x, y, z)
    
    # k = (x.to_i^y.to_i^z.to_i).to_s(2)
    k = (x.to_i^y.to_i^z.to_i)
    # puts "xorThreeBits: " + modifyBits(k,32)
    return k
end


# k = xorThreeBits( 0b11111110000000000000000001111111, 0b1111111111111100000000000000, 0b11111111111) 
# puts k