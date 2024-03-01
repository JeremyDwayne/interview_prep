# https://leetcode.com/problems/remove-element/
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  return 0 if nums.empty?
  i = 0
  (0...nums.length).each do |j|
    if nums[j] != val
      nums[i] = nums[j]
      i += 1
    end
  end
  i
end
