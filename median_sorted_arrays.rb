def find_median_sorted_arrays(nums1, nums2)
  i = 0
  while i < nums2.length do
    nums1.push(nums2[i])
    i += 1
  end
  sum = 0
  nums1.each do |num|
    sum += num
  end
  avg = sum.to_f / nums1.length
end

find_median_sorted_arrays([1,2],[3,1,2])
