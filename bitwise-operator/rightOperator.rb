require_relative("./modifyBits");


def rightRotate(b, i)
    ret = ((((b >> i) & 2**32-1)|(( b << 32-i) & 2**32-1)) & 2**32-1);
    return ret;
end

def rightShift (b,i)
    ret = (b >> i);
    return ret
end



