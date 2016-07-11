def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr
end

p bubble_sort([4,1,2])
p bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
  n = arr.length
  loop do
    swapped = false
    (n-1).times do |i|
      compare = yield(arr[i], arr[i+1])
      if compare >= 1
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr
end

arr = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

p arr
