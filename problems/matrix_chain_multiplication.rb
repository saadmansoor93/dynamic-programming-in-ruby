# dynamic programming
# Matrix Multiplication Cost Problem

class Matrix
  def find_cost(arr)
    temp = Array.new(arr.length){ Array.new(arr.length){ 0 } }
    q = 0

    for l in 2..arr.length-1 do
      for i in 0..arr.length-l-1 do
        j = i + l
        temp[i][j] = 1000000

        for k in (i+1)..(j-1) do
          q = temp[i][k] + temp[k][i] + (arr[i] * arr[k] * arr[j])

          if q < temp[i][j]
            temp[i][j] = q
          end
        end
      end
    end

    temp[0][arr.length-1]
  end
end

mmc = Matrix.new

array_m = [4,2,3,5,3]

cost = mmc.find_cost(array_m)

puts cost
