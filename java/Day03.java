import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class Day03 {

  private static final int[][] PART_2_PATHS = new int[][] {
    { 1,1 }, { 3,1 }, { 5,1 }, { 7,1 }, { 1,2 }
  };

  public static void main(String[] args) throws IOException {
    var grid = Grid.load("inputs/day03.txt");

    System.out.println(Integer.toString(grid.trees(3, 1)));

    long product = 1;
    for (var path : PART_2_PATHS) {
      product *= grid.trees(path[0], path[1]);
    }

    System.out.println(Long.toString(product));
  }

  private static class Grid {
    private final List<String> grid;

    public Grid(List<String> grid) {
      this.grid = grid;
    }

    public int trees(int right, int down) {
      var count = 0;

      for (var i = 0; i < grid.size(); i++) {
        var row = grid.get(i);

        var isSkippedRow = i % down != 0;
        var isTree = row.charAt((i / down) * right % row.length()) == '#';

        if (!isSkippedRow && isTree) {
          count++;
        }
      }

      return count;
    }

    public static Grid load(String path) throws IOException {
      return new Grid(Files.readAllLines(Path.of(path)));
    }
  }
}
