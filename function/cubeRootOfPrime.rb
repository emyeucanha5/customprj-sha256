require_relative('../bitwise-operator/index.rb')
$prime = [1005]
def sieveEratosthenes
    for i in 0..1000
        $prime[i] = 1;
    end
    $prime[0] = 0;
    $prime[1] = 0;
    $prime[1000] = 0;
    for i in 2..1000
        if($prime[i]==1)
            j = i * i
            while(j<1000)
                $prime[j] = 0;
                j+=i;
            end
        end
    end
end
$randNum = []
sieveEratosthenes();

def genRandomNumber
    i = 0;
    while $randNum.length < 64
        if($prime[i]==1)
            k = Math.cbrt(i.to_f)
            ans = k - k.to_i
            ans = (ans.round(15)*(2**32)).to_i;
            $randNum << ans;
        end
        i+=1
    end
    return $randNum
end

