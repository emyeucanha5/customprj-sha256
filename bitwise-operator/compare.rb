def compare
    s1 = File.new("s1.txt","r");
    s1_content = s1.gets;
    s1.close
    s2 = File.new("s2.txt","r");
    s2_content = s2.gets;
    s2.close
    if(s1_content==s2_content)
        return true
    else
        return false
    end
end

# puts compare