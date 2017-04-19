# dynamic programming
# longest common subsequence in Ruby

class DP
  def lcs_dynamic(str1, str2)
    temp = Array.new(str1.length){ Array.new(str2.length) {0} }
    max_num = 0

    for i in 1..temp.length-1 do
      for j in 1..temp[i].length-1 do
        if str1[i-1] == str2[j-1]
          temp[i][j] = temp[i-1][j-1] + 1
        else
          temp[i][j] = [temp[i][j-1], temp[i-1][j]].max
        end

        max_num = temp[i][j] if temp[i][j] > max_num
      end
    end
    max_num
  end
end

dp = DP.new

len = dp.lcs_dynamic("ABCDAF".split(//), "ACBCF".split(//))

puts len
