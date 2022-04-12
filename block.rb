require_relative('./main.rb')
Maxnonce = 100000;
str = ''
g =  finalCompress str
# puts g
def getText str
    nonce = 1;
    checked = true;
    previousBlock = '0000000000000000000000000000000000000000000000000000000000000000'
    while ((nonce < Maxnonce) && checked)
        tmp = '1' + nonce.to_s + str + previousBlock;
        tmpHash = finalCompress tmp;
        puts tmpHash[0,4]
        if(tmpHash[0,4] == "0000")
            puts tmpHash;
            checked = false
        end
        puts nonce
        nonce += 1;
        # puts tmp
    end
end
getText str