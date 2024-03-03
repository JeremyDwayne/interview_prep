# https://leetcode.com/problems/baseball-game/
# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  score = []
  operations.each do |operation|
    if operation == '+'
      score << score.last(2).sum
    elsif operation == 'D'
      score << score.last * 2
    elsif operation == 'C'
      score.pop
    else
      score << operation.to_i
    end
  end
  score.sum
end
