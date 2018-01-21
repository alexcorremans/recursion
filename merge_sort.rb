def merge_sort(array)
  n = array.length
  return array if n < 2
  # sort left half, sort right half
  a = merge_sort(array.slice(0,n/2))
  b = merge_sort(array.slice(n/2,n))
  # merge sorted halves
  sorted = []
  until a.empty? || b.empty?
    if a.first < b.first
      sorted.push(a.first)
      a.slice!(0)
    else
      sorted.push(b.first)
      b.slice!(0)
    end
  end
  # add the rest of a or b if the other one is empty
  sorted += (a + b)
end
