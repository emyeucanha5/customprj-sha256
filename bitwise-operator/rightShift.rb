require_relative("./modifyBits");

def rightShift (b,i)
    # k = (b >> i).to_s(2);
    k = (b >> i);
    # puts "RightShift: " + modifyBits(k,32);
    return k
end

# rightShift(0b00000100000000000000000000000000,5 )