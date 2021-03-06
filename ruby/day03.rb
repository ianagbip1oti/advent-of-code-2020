GRID = DATA.map(&:chomp)

def count_trees(right, down)
  path = GRID.map.with_index do |row, idx|
    row[(idx/down) * right % row.size] if idx % down == 0
  end
  path.count ?#
end

p count_trees(3, 1)
p [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]].map { |pth| count_trees(*pth) }.reduce(:*)

__END__
.........#..##.##..............
#...#.#..#.....................
.#...#..#...................#..
........##..#...#..............
.#.#.....#..#..##......#.......
....#..#...#..##........#..##..
...#....##........#.......#.#..
....#................#...###..#
...#...#.#..#....#.......####.#
.....#...#..........#...#..#.#.
....#..#............#.#.#.#..#.
..#....#.###..#............#...
.....#.............#.#.........
.#.##............##.........#..
...##...#..#....#.##..#.....#..
..............#.#.........#.##.
...........#.....##....##......
.......#............#...#......
............#.#....#....#..#..#
....#................####......
...#.........................##
..........#........#.#.........
....#.#....#...........#......#
..#.#..##......##..##..#..#.#..
...#.....##......#.#.#.........
.........#.#....#...#.#.#......
.......#.......###.#.......#...
..#............##..#.......#...
...#....#......#...#...#...#...
......#..#.#.....##......#.....
...........##...##...#....#.##.
#.##..#.....##..#.#............
.#.#.....##......#.##........#.
..#...#...#...#..........#...##
...##.........................#
.....#......#.....##....#.....#
..#........#...................
#......#..#.#..#..#.#..#...#...
...............#..........#....
.....#...........#......#....#.
........#..#...............#...
.........#...#.......#.#..#...#
..#..#......#.##..........#....
.#...#....#.....#.............#
.##.....#.........#......#..#..
........#..##.......#......#...
.......#.....###......#..#.....
.......#.#.......#.............
...#................##.#.......
..##..#...#.#...#.#..#.#.#.##..
.......#.#............#...#....
#...#.....#......#..........##.
.#.......#......#.......#.#.#..
.#.##.#.#...........#..........
.......#.....#....#.#.##......#
.###..#...#.............##.....
......#......#.................
##...#.#...##...#.#.....#....#.
#.............#....##...#....#.
#.#...#....#........#.###..##..
......#.........#......#.#.#.#.
..#.#.#.....#........#..#...#..
#.##....#.#......#...........#.
.#.#.####.........#..#.##....##
......##...............#......#
.......#.........#........#.#..
....#....#..#.##.........#..#..
.#..........#.##....#.#..#.....
#..#.#............#..#....#.#.#
..................#..#.........
##..##.#....#.................#
..................#........#..#
.....#.........#.......##......
.....................#.#..#...#
.....#.........#..........#.#..
...#.#..#..#.#.#.......#.......
.....#.....#.#.........#.....##
.............##....#....##.#...
.#......#........##..#...###...
........#.......##.##.#......#.
..#....................#.##..#.
......#.......#..#....##.#.....
...#....#.......##...#.......#.
.#.#..#.#..........##..........
....#.......##...........#.....
###....#.......#..#...#.....##.
...#......#.........#..#.#..#.#
#.........#..##.#..............
.#.....#..##.#..#..###.....##.#
..........#..#....##.......#...
.#..#.#...#...##.#..#.##.#.....
#....#...#........#......##....
..#.####....#.#........#....#..
#......#............#.#........
...#..#.......##...........#...
.........#..#.#..#.###.#...#..#
..#....##.......#.............#
............#..#......#........
........#......#..............#
..#.#.#...........#............
...........#......##.#.#.......
.#..........#...........#..#...
.....#...#..#.........##...#...
.......#....##....#.#.........#
..#.#......#.......#...##.#....
.....#..........#........#.....
#.......#.......#............#.
..##.#.....#.##.#.#.#..#.......
..#...#.......#.###............
.#...#..#....#...#...#..#....##
.....#.....#...................
.......................#......#
......#...##.........#...#..#..
.....#..#.....#..............#.
.#.##..#..#....................
....#..#...#....#.............#
..###..#...#......#.....#......
..#......###....#.....#.....###
...#.##..#...#.....#........#..
.#.#...........##....#...#.##..
.......#...##......#..#..#.....
#.............#..#...##.#..#..#
..........#......#.......#.....
...............#.#.#....#...#..
#.......#.#..#.....#........#..
.#.#.#.......#..#.........##...
......#.....#.#....#...........
..#.....##.#........##.#......#
...###...#..#.........#........
....#...................#..#...
.##........#...................
....#..#...........#.#.........
.....#.......#...#....#.#......
.........#...#.......#.#...#...
.......#.#..#....#....#.......#
..#.............#..............
.#...#..#.#.#..#............#..
...#.##.##..#..#...........##..
...........#...#..#.#........#.
....#...#.....#...#.#....#...#.
.......#.#...##..#.............
.......................#....#..
..#..#.....#...........#....#..
.#..#...#.##........##....#....
#.....##.#.#.......#.....#...#.
.#....#.......................#
#..##..###...#.........#.......
..##...#...#..........#....#...
......#..##......##.#.........#
................#........#..#..
.....#.#..#.....#.......#..#...
..#..#.....#.......#..#..#...#.
.#....#...#...#......##.....#..
....#........#...#......##....#
..#..........##......#......#..
#.#.....#.....#.......#........
...#...#......#....##.#..#...##
...#....#...#.#...........##...
#....##...#...#....#...........
...#.#..#...#..............##..
#..#..........##.#.#.....#.....
..#...#.........#.#..........#.
....#.....#..........#.........
........................#......
.#.....#.#...###...#....#......
....##....#....#..#.##........#
..#........#.........#.......#.
.....#.#......#...#...#........
........#..#.....#....###....#.
...........#..#.#....#.#....##.
.......#.....##.#............#.
...............#........##.##..
.............#...##......#...#.
#...##.#.......#......###.....#
..........#...#........#..#....
....#....................#...#.
.#......#...#.......#....#.#...
....#.......................#..
#...#...#...#.##....##.........
..........#.#...##.#...#.......
..#...............#....#..#...#
#..#..#...#..#.........#...#...
.....#..#..........#.##.#..##..
........#......##.....#........
.#....#.#.........#...#..#.#...
....#..............##..........
#...............#..............
..###.........#....##.........#
.........#.#....##........#...#
....#.#..#......#...#..........
...#.#.....#....#..#....#.#..#.
............#..#.....#...##....
...........#....#.#.#...#......
#...............#....###.......
.........#.....##.#..#..#......
...#...##...###...............#
.#......#.#.#.................#
.........##..#............#....
..#..#.....#.....#.#...........
.#......##............#.#....#.
.#.##..##.##..#.........#.....#
...##.##......##.##......#.....
##.....#.#...#...#...#..#......
....................#......#...
.....#.................#...###.
...........#..#.........#.#....
...#........#..#........#....#.
#................#......###...#
.............##.#.....#.#......
...#...#.##..#........##.......
#..#.##...#....#.#.............
.#.........#.#..#...........#..
....#...#.....#.#..........#...
.#.#....###.......##.....#.##..
.##....##......#......#.#....#.
..#...#.#........#...#..##.....
..............###..........##..
#....#..##.....#.....#.....#...
...#...#....................#..
.#....#.#.....#.#..#..##.......
#...##..###......#.............
..........#.#....##.#........##
..#..#.....#...#....#.#.#......
#.....#........#..##.#.........
....#.....#..........##......#.
......#..#.....#........#.....#
.....#..#....#...........#.##..
.#....................#....#..#
........#..#...........#.......
#....#.#.......#........#.#..#.
........#.....#...#............
..#........#........#....#...#.
.....##.......#..#..........#..
......#.#......###...#....##..#
.#..#.............#.#..........
#.....##.#.#.#.#.#.....#.....#.
.#..#.....#.......#.#.....#....
###....##...#.#...#..#......###
.#................#.....#.##...
....##....#.#........###.#.#...
#.#....#........#.....#.......#
..........#..........#.##...#..
....#....#..##......#..#.......
.....#..........#.##...........
##......#.#......#.##..........
##..........##.......##........
..#.....#....#.##..#..#..#.....
......###...#...........#...###
#..#.............##............
...#.###.....#..#.........#.#..
......#...............#...#.#..
.....#...##.#...#.....#.#..#...
..#..#.#....#.#................
...............##.....#........
......#.#.....#...#.........#..
........#..#...#.#...#......#..
#...........#.......#...##...#.
........#.#...#..##..#.#...#...
..#....#...#......#..........##
..#..............##...##.#.....
...#....#..#....##.........#.#.
.#.#....#..........#.......#...
...##....#.#....#....#.#...#...
..............#..##........#..#
..........#.#...##......#..#.#.
#...##..#......................
.......#........##.#.#.#.......
.........##..#.#.......####....
..#.............#..#........##.
##..#..#...#....#.....#...#..#.
..#.#...#.#.....#..............
..#....#....#..##...#.#........
##.....#..#...#................
#....#.....................#...
..............###.....#.#.#....
..#......##.#....#.#...##......
#...#.#......#...#.#......#....
....#...................##.#...
.........##......#.....#.####..
##..#........#.....#......##..#
...#..#...#...#.............#..
#..#..#.#......###...#.........
.......#.#..#........#....##..#
............#..##.....#.#.#....
#..#.....#.....#....##........#
......#..........##............
.....#...#...........#.........
...........#....#...#....#.#...
....#.........##.##.......#....
......#....#...........#.##...#
.##.#.#..##...#.....##.#...#...
.......#.#....#...#...#....#...
.#...##.#.#.....#..#....#......
.#....###..#.......#......#...#
..#.#.........#.........#.....#
.......#.#.##..#.#.......##..#.
.##............#.........#....#
.#...##.###..#........##.#..#..
..#........#.#.....##..##.#....
...........#...........#.....#.
.#...######..##...#.....#......
.#.##.#.......#......#......#..
.#.....#.....#........#........
...#..#...#.##...#...........#.
.......#.....#.......#.........
............#...###...........#
...#.......#.......##....#..#..
##.......#....#....####........
.......#.#......#..........#..#
#.....##..#..#.....#....#...#..
#............#........##.......
.#.#...#.............#..##.....
.#....#..#.#......#.##.......##
...................##...##..###
..#.....#...#................#.
..#...#....#...#.#.#...#.....#.
.....#............#....#...#..#
.#.....#....#..#......#.#.....#
............#.#.....####.##....
....#......###....#...#....#...
#.....#..#.....#..#...#.......#
..#.#...#....#....##..#...##...
.##..#..#..##....##...#........
