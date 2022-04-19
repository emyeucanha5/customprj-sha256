require_relative('./main.rb')
Maxnonce = 100000;

class BlockCreated
    attr_accessor :tmpHash, :nonce
    def initialize (tmpHash,nonce)
      # insert lines here
      @tmpHash = tmpHash
      @nonce = nonce
    end
end

class PrevAndHash
    attr_accessor :prev, :tmpHash, :data,:nonce
    def initialize (tmpHash,prev,data,nonce)
      @data = data
      @prev = prev
      @tmpHash = tmpHash
      @nonce = nonce
    end
end

def mine str, previousBlock
    nonce = 1;
    checked = true;
    # previousBlock = '0000000000000000000000000000000000000000000000000000000000000000'
    while ((nonce < Maxnonce) && checked)
        tmp = '1' + nonce.to_s + str + previousBlock;
        tmpHash = finalCompress tmp;
        # puts tmpHash[0,2]
        if(tmpHash[0,2] == "00")
            return BlockCreated.new(
               tmpHash,
                nonce
            )
            checked = false
        end
        # puts nonce
        nonce += 1;
        # puts tmp
    end
end

def getText str, nonce , previousBlock
    tmp = '1' + nonce.to_s + str + previousBlock;
    return finalCompress tmp
end
# getText str