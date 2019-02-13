# You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water.
#
# Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).
#
# The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
#
#
#
# Example:
#
# Input:
# [[0,1,0,0],
#  [1,1,1,0],
#  [0,1,0,0],
#  [1,1,0,0]]
#
# Output: 16
#
# Explanation: The perimeter is the 16 yellow stripes in the image below:
#
#

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  height = grid.length
  length = grid[0].length
  perimeter = 0
  height.times do |i|
    length.times do |j|
      if grid[i][j] == 1
        temp = 4
        temp -= 1 if i > 0 && grid[i - 1][j] == 1
        temp -= 1 if i < (height - 1) && grid[i + 1][j] == 1
        temp -= 1 if j > 0 && grid[i][j - 1] == 1
        temp -= 1 if j < (length - 1) && grid[i][j + 1] == 1
        perimeter += temp
      end
    end
  end
  perimeter
end

grid = [[0,1,0,0],[1,1,1,0]]
p island_perimeter(grid)
