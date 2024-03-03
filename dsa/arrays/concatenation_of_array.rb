# https://leetcode.com/problems/concatenation-of-array/
# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
  # return nums + nums
  ans = Array.new(nums.size * 2)

  j = nums.length
  (0...nums.length).each do |i|
    ans[i] = nums[i]
    ans[j] = nums[i]
    i += 1
    j += 1
  end
  ans
end
