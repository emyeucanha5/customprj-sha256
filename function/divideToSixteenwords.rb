require_relative('../bitwise-operator/index.rb');
require_relative('./padding0.rb');

def divideToSexteenwords str
    w = [];
    i = 0;
    l = 0
    # puts str;
    # puts
    while i < 16
        w.push(changeBitsToDecimal(str[l, 32]));
        # puts w[i]
        l += 32;
        i+=1
    end
    # puts w
    while i < 64
        s1 = w[i-16]
        s2 = sigma0(w[i-15])
        s3 = w[i-7]
        s4 = sigma1(w[i-2])
        tmps12 = addBit(s1,s2);
        tmps34 = addBit(s3,s4);
        s5 = addBit(tmps12, tmps34);
        w.push s5;
        # puts 'W' + i.to_s + ' ' + modifyBits(s5, 32)
        i += 1;
    end
    return w;
end

# divideToSexteenwords "abc"