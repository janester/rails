class Number

  def Number.bin2dec(bin_string)
    num = 0
    bin_string = bin_string.split("").reverse
    bin_string.each_with_index do |letter, i|
      n = (letter.to_i)*(2**i)
      num += n
    end
    return num
  end

  def Number.dec2bin(num)
    number = num
    remainder = ""
    while number != 0
      remainder += (number%2).to_s
      number = number/2
    end
    # remainder += (number%2).to_s
    remainder.reverse
  end

  def Number.bin2hex(string)
    hex = [0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"]
    a = string.split("")
    a = a.reverse.each_slice(4).to_a
    x = []
    (a.length).times do |i|
      d = a[i].reverse.join
      x << Number.bin2dec(d)
    end
    x = x.reverse
    x = x.map{|j| hex[j]}
    x.join
  end
end


def Number.hex2bin(string)
  hex = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
  bin = string.split("").map{|x| hex.index(x)}.map{|y| Number.dec2bin(y)}
  bin2 = []
  bin.each do |x|
    case x.length
    when 1 then x = "000"+x
    when 2 then x = "00"+x
    when 3 then x = "0"+x
    else
      x
    end
    bin2 << x
  end
  bin2.join
end
