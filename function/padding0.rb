require_relative ('../bitwise-operator/index.rb')
require_relative('./messages.rb')
$blockLength;
$blockOfMessages = []
def padding64bits message,l
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
    padding64bits message,l
end

# paddingZero "abc"
