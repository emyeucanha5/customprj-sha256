require_relative("./modifyBits");


def rightRotate(b, i)
    fullOne = 2**32-1
    # k = ((((b >> i) & fullOne)|(( b << 32-i) & fullOne)) & fullOne).to_s(2);
    k = ((((b >> i) & fullOne)|(( b << 32-i) & fullOne)) & fullOne);
    # puts "right Rotate: " + modifyBits(k, 32)
    return k;
end

