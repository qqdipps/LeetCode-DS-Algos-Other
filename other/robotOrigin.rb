=begin
There is a robot starting at position (0, 0), the origin, on a 2D plane. 
Given a sequence of its moves, judge if this robot ends up at (0, 0) after it completes its moves.

The move sequence is represented by a string, and the character moves[i] 
represents its ith move. Valid moves are R (right), L (left), U (up), and D (down). 
If the robot returns to the origin after it finishes all of its moves, return true. 
Otherwise, return false.

Note: The way that the robot is "facing" is irrelevant. "R" will always make the robot 
move to the right once, "L" will always make it move left, etc. Also, assume that the 
magnitude of the robot's movement is the same for each move.
=end

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
	moves.upcase!
	move_key = {:R => {:X => 1}, :L => {:X => -1}, :U => {:Y => 1}, :D => {:Y => -1}}
	y, x = 0, 0
	move_key.each do |key, value|
		value.each do |k2, v2| 
			v2 = moves.count(key.to_s) * (v2)
			k2 == :X ? x += v2 : y += v2
		end
	end
	return 	x == 0 && y == 0 ? true : false
end
moves = "RrrLLuLKD"
p judge_circle(moves)

def judge_circle_BEST(moves)
	moves.upcase!
	moves.count("U") == moves.count("D") && moves.count("L") == moves.count("R")
end
p judge_circle_BEST(moves)
