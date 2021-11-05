# def bubblesort(*arr)
#   sorted = true
#   n = arr.length-1

#   while sorted
#     sorted = false
#     n.times do |i|
#       if arr[i] > arr[i+1]
#         arr[i],arr[i+1] = arr[i+1],arr[i]
#         sorted = true
#       end
#     end
#   end
#   arr
# end

# p bubblesort(2,4,1,5,7,9,8,3)

# def fib(num)
#   if num == 0 || num == 1
#     num
#   end

#   a,b = 0,1

#   num.times do
#     puts b
#     a,b = b, a + b
#   end
# end

# fib(10)

def bubblesort(*arr)
  n = arr.length-1
  sorted = true

  while sorted
    sorted = false
    n.times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = true
      end
    end
  end
  arr
end

p bubblesort(2,4,1,5,7,9,8,3)

為了符合進入迴圈條件，先在迴圈外設sorted = true。
因為需要在array裡面排序
arrary是從0開始計算，而length的回傳值是array裡面有幾個值。
假設arrary裡面有8個值，length會回傳9，因此length-1能知道。
