require_relative('./finalHash.rb')
Maxnonce = 100000;
$difficulty = "00";


class Block
    attr_accessor :prev, :digest, :data,:nonce
    def initialize (digest,prev,data,nonce)
      @data = data
      @prev = prev
      @digest = digest
      @nonce = nonce
    end
end

def mine str, previousBlock
    nonce = 1;
    checked = true;
    while ((nonce < Maxnonce) && checked)
        tmp = '1' + nonce.to_s + str + previousBlock;
        digest = finalCompress tmp;
        if(digest[0,2] == $difficulty)
            return Block.new(
                digest,
                previousBlock,
                str,
                nonce,
            )
            checked = false
        end
        nonce += 1;
    end
end

def getText str, nonce , previousBlock
    tmp = '1' + nonce.to_s + str + previousBlock;
    return finalCompress tmp
end