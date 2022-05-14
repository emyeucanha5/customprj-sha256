require_relative ("../bitwise-operator/index.rb");


# hashString("hello");

def createMessagesBits str;
    ret = "";
    arr = str.bytes;
    arr.each do |i|
        ret+= modifyBits(i,8);
    end
    # puts "Messega: " + ret.to_s.length.to_s;
    return ret;
end

# createBits "abc"