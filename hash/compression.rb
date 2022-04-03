require_relative('./message');
require_relative('../bitwise-operator/index.rb');
require_relative('../cubeRoots/cubeRootOfPrime.rb');



$compressArray = initHash
def compression w
    i = 0;
    while i<64
        m1 = message1 i,w
        m2 = message2
        puts 'm1: ' + modifyBits(m1,32);
        puts 'm2: ' + modifyBits(m2,32);
        $compressArray.unshift(addBit(m1,m2));
        $compressArray.pop();
        $compressArray[4] = addBit($compressArray[4], m1);
        i+= 1
    end
end
# compression;
# $compressArray.each do |i| 
#     puts modifyBits(i,32)
# end
# puts $compressArray
puts