require_relative './bitwise-operator/index';
require_relative './cubeRoots/cubeRootOfPrime';
require_relative './hash/message.rb';
require_relative './hash/compression.rb';
require_relative './function/padding0.rb';
require_relative './function/messages.rb';
require_relative './cubeRoots/cubeRootOfPrime.rb'

$finalCompressArray = []
$finalString;
def finalCompress str
    initHash # create 8 random number by using factional part of SQUARE root of first 8 primes number and multiple them with 2^32
    genRandomNumber # create 64 random number by using factional part of CUBE root of first 8 primes number and multiple them with 2^32
    message = createMessagesBits str # Hash message and return bits
    tmpStr = split message; # add zero and divide to multiple chunk loop
    w = [];
    j = 1
    oldcompress = [];
    tmpStr.each do |i| # for everyLoop the array w and compressArray[i] would change.
        w = divideToSexteenwords(i); # return 64 word
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
        $compressArray.each do |i| 
            # puts modifyBits(i,32)
        end
        puts 
        puts 
        puts 
    end


    #final hash

    $compressArray.each do |i|
        $finalCompressArray.push i.to_s(16);
    end
    puts $finalCompressArray.join("")
end
# str = gets().chomp
str = 'abcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcd'
finalCompress str;
# puts $compressArray