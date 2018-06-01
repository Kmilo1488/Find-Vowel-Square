def FindVowelSquare(arr)
  width = arr[0].length
    (0..width-2).each {|x|
      (0..arr.length-2).each {|y|
        square = [arr[y][x], arr[y+1][x], arr[y][x+1], arr[y+1][x+1]]
        return x.to_s + "-" + y.to_s if square.all?{|x| x =~ /[aeiouAEIOU]/}
        }
      }
  return "Nulo"
end

puts FindVowelSquare(["adiuws", "pwrfea", "wqojuo"])
