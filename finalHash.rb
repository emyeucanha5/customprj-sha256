require_relative './bitwise-operator/index';
require_relative './hash/index.rb';
require_relative './function/index.rb';

$defaultHash = '0000000000000000000000000000000000000000000000000000000000000000';
$finalCompressArray = []
$finalString;
initHash # create 8 random number by using factional part of SQUARE root of first 8 primes number and multiple them with 2^32
genRandomNumber # create 64 random number by using factional part of CUBE root of first 8 primes number and multiple them with 2^32
def finalCompress str
    $finalCompressArray.clear 
    $compressArray = initHash.clone
    $blockOfMessages.clear
    # puts $compressArray
    message = createMessagesBits str # Hash message and return bits
    tmpStr = split message; # add zero and divide to multiple chunk loopz
    w = [];
    j = 1
    oldcompress = [];
    tmpStr.each do |i| # for everyLoop the array w and compressArray[i] would change.
        w = messageSchedule(i); # return 64 word
        oldcompress = $compressArray.clone
        compression w
        if(j==1)
            for i in 0..7
                $compressArray[i] =  addBit($compressArray[i], $initialArray[i]);
            end
        else
            for i in 0..7
                $compressArray[i] =  addBit($compressArray[i], oldcompress[i]);
            end
        end
        j+=1; 
    end


    #final hash

    $compressArray.each do |i|
        x = i.to_s(16);
        while x.length < 8
            x = '0' + x;
        end
        $finalCompressArray.push x
    end

    ret = $finalCompressArray.join("")
    return ret
end
