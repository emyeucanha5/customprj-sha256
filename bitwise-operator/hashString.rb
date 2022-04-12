require_relative("./modifyBits");

$arr = []
def hashString s
    i = 0
    # print "hashString: "
    while i < s.length
        # k =  s[i].ord.to_s(2)
        k =  s[i].ord
        $arr.push k
        # print modifyBits($arr[i],8) + ' '
        i+=1
    end
    # puts
    return $arr
end
