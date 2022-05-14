require_relative('../bitwise-operator/index.rb');
require_relative('./messages.rb')
$blockLength;
$blockOfMessages = []
def append0s message,l
    tmpLength = l.to_s(2);
    i = tmpLength.length
    while i<64
        tmpLength = '0'+tmpLength;
        i+=1
    end
    message +=tmpLength;
    i = 0;
    l = 0;
    r = 512;
    while i < $blockLength
        # puts l, r
        tmpMessage = message[l, r];
        $blockOfMessages.push(tmpMessage); 
        # puts $blockOfMessages[i];
        i+=1;
        l += 512
    end
    return $blockOfMessages
end

def split message
    message += '1';
    l = message.length;
    $blockLength = ((l+64)/512).to_i;
    if((l+64)%512 != 0)
        $blockLength += 1;
    end
    i = l
    while i < ($blockLength*512 - 64)
        message += '0'
        i+=1
    end
    l-=1;
    append0s message,l
end

def messageSchedule str
    w = [];
    i = 0;
    l = 0;
    while i < 16
        w.push(changeBitsToDecimal(str[l, 32]));
        l += 32;
        i+=1
    end
    
    while i < 64
        w.push addBit(addBit(w[i-16],sigma(w[i-15],0,false)), addBit(w[i-7],sigma(w[i-2],1,false)));
        i += 1;
    end
    return w;
end

# messageSchedule "abc"