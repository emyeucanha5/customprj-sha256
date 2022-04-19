require_relative "../bitwise-operator/index";
require_relative "../cubeRoots/cubeRootOfPrime";

$initialArray = [];
$initialArray2 = [];
def initHash
    i = 0;
    while $initialArray.length < 8
        if($prime[i] == 1)
            k = Math.sqrt(i.to_f)
            ans = k - k.to_i
            ans = (ans.round(15)*(2**32)).to_i;
            $initialArray << ans;
            $initialArray2 << ans;
            # ans = modifyBits(ans, 32)
            # puts $initialArray.length.to_s + ' ' + ans
        end
        i+=1;
    end
    return $initialArray2
end

