require_relative('../bitwise-operator/index.rb');
require_relative('./padding0.rb');

def divideToSexteenwords str
    w = [];
    i = 0;
    l = 0
    # puts str;
    # puts
    while i < 16
        w.push(str[l, 32]);
        l += 32;
        i+=1
    end
    while i < 64
        s1 = changeBitsToDecimal(w[i-16]) 
        s2 = sigma0(changeBitsToDecimal(w[i-15]))
        s3 = changeBitsToDecimal(w[i-7])
        s4 = sigma1(changeBitsToDecimal(w[i-2]))
        tmps12 = addBit(s1,s2);
        tmps34 = addBit(s3,s4);
        s5 = addBit(tmps12, tmps34);
        w.push modifyBits(s5,32);
        # puts 'W' + i.to_s + ' ' + modifyBits(s5, 32)
        i += 1;
    end
    return w;
end

# divideToSexteenwords "abc"