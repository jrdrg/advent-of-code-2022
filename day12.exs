defmodule Input do
  @input "
  Sabqponm
abcryxxl
accszExk
acctuvwj
abdefghi"

  @input "
abaaaaaaaaccccccccccccccccccaaaaaccccaaaaaaccccccccccccccccccccccaaaaaaaaaacccccccccccccccccccccccccccccccaaaaaccccccccccccccccccccccccccccccccccccccccccaaaaaa
abaaaaaaaacccccccccccccccccccaaaaaccccaaaacccccaaaacccccccccccccccaaaaaaaaaacccccccccccccccccccccccccccccaaaaaaccccccccccccccccccccccccccccccccccccccccccccaaaa
abccaaaaaaccccccccccccccccccaaaaaaccccaaaaccccaaaaaccccccccccaaaaaaaaaaaaaaacccccccccccccccccccccccccccccaaaacccccccccccccccccccccccccccccaaaccccccccccccccaaaa
abcaaaaaaaccccccccccccccccccaaaaccccccaccaccccaaaaaacccccccccaaaaaaaaaaaaaaacccccccccccccccccccccacccccccccaacccccccccccccccccccccccccccccaaaccccccccccccccaaaa
abccaacccaccccccccccccccccccccaaacccccccccccccaaaaaaccccccccccaaaaaaaaacaaacccccccccccccccccccaaaacccccccccccccccccccccccccaacccccccaaccccaaacccccccccccccaaaaa
abcaaaaaacccccccccccccccccccccccccccccccccccccaaaaaccccccccccaaaaaaaaaaccccaacaaccccccccccccccaaaaaacccccccccccccccccccccccaacccccccaaaacaaaaccccccccccccccaccc
abccaaaaacccccccccccccccccccccccccccccccccccaaccaaacccccccccaaaaaaaaaaaacccaaaaccccccccccccccccaaaaacccccccccccccccaacaaaaaaacccccccaaaaaaaaacccccccccccccccccc
abccaaaaaacccccccccccccccccccccccccccccaaacaaaccccccccccccccaaaaaaaaaaacccaaaaacccccccccccccccaaaaacccccccccccccaaaaaccaaaaaaaaccccccaaaaaalllllllcccaacccccccc
abccaaaaaaccccccaaaaacccccccccaaaccccccaaaaaaaccccccccccccccaaacaaacaaacccaaaaaaccccccccccccccaccaaccccccccccccccaaaaacaaaaaaaaajkkkkkkkkkklllllllccccaaaaacccc
abccaaaaacccccccaaaaacccccccccaaaaccccccaaaaaaccccccccaacaacccccaaacccccccacaaaaccccccccaaaccccccccccccccccccccccaaaaaccaaaaaaajjkkkkkkkkkkllssllllcccaaaaacccc
abcccaaaaccccccaaaaaacccccccccaaaaccccccaaaaaaaaccccccaaaaacccccaaccccccccccaacccccccccaaaacccccccccccccccaaccccaaaaaccaaaaaacjjjjkkkkkkkkssssssslllccaaaaccccc
abcccccccccccccaaaaaacccccccccaaaccccccaaaaaaaaacaaccccaaaaacccccccccccccccaaccccccccccaaaaccccccccccccccaaacccccccaaccaaaaaajjjjrrrrrrsssssssssslllcccaaaccccc
abcccccccccccccaaaaaacccccccccccccccccaaaaaaaaaaaaaaacaaaaaacccccccccccaaacaacccccccccccaaaccccaaacccccaaaaaaaaccccccccaacaaajjjrrrrrrrsssssuusssslmcccaaaacccc
abcccccccccccccccaacccccccccccccccaacaaaacaaaccaaaaaacaaaaccccccccccccccaaaaaccccccccccccccccccaaaaacccaaaaaaaaccccccccccccaajjjrrrruuurssuuuuvsqqmmcddaaaacccc
abccccccccccccccccccccccccccccccccaaaaacccaaacccaaaaccccaaccccccccccccccaaaaaaacccccccccccccccaaaaaaccccaaaaaacccccccccccccccjjrrruuuuuuuuuuuuvvqqmmmdddccccccc
abcccccccccccccccccccccccacccccccccaaaaaccaaacccaaaaccccccccccccccccccccaaaaaaacccccccccccccccaaaaaaccccaaaaaacccccccccaaccccjjjrrtuuuuuuuuyyvvvqqmmmddddcccccc
abccccccccccccccccccccaaaaccccccccaaaaaacccccaacaccacccccccccccccccccccaaaaaaccccccccccccccccccaaaaaccccaaaaaaccccccccaaaccccjjjrrttuxxxuuxyyyvvqqmmmmdddcccccc
abcccccccccaacccccccccaaaaaaccccccaaaaccccccaaaccccccccccccccccccccccccaacaaaccccccccccccccccccaacaaccccaaccaaccccaaaaaaaccccjjjrrtttxxxxxyyyyvvqqqmmmddddccccc
abccccccccaaaacccccccccaaaacccccccccaaccccccaaacaaaccccccccccccccccccaaccccaacccccccccccccccccccccccccccccccccccccaaaaaaaaaacijjqrtttxxxxxyyyvvvqqqqmmmdddccccc
abcccccacaaaaaccccccccaaaaaccccccccccccccaaaaaaaaaacccccccccccccccccaaaccccccccccccccccccccccccccccccccccccccccccccaaaaaaaaaciiiqqqttxxxxxyyyvvvvqqqqmmmdddcccc
SbcccccaaaaaaaaaacccccaacaaccccccccccccccaaaaaaaaaccccccccccccccaaacaaacccccccccccccccccccccccccccccccccccccccccccccaaaaaaaciiiqqqtttxxxEzzyyyyvvvqqqmmmdddcccc
abcccccaaaaaaaaaaccccccccccccaaccccccccccccaaaaaccccccccccccccccaaaaaaaaaacccccccaacccccccccccccaacccccccccccccccccaaaaaaccciiiqqqttxxxxyyyyyyyyvvvqqqmmmeddccc
abcccccccaaaaaacccccccccccaaaaccccccccccaaaaaaaaacccccccaaaacccccaaaaaaaaacccccaaaaccccccccccaacaaaccccccccccccccccaaaaaaaciiiqqqtttxxyyyyyyyyyvvvvqqqnnneeeccc
abcccccccaaaaaacccccccccccaaaaaaccccccccaaaaaaaaaaccccccaaaaccccccaaaaaaaccccccaaaaaaccccccccaaaaacccccccccccccccccaaccaaaciiiqqtttxxxxwwyyywwvvvvrrrnnnneeeccc
abcccccccaaaaaaccccccccccccaaaaacccccccaaaaaaacaaaccccccaaaacccccaaaaaacccccccccaaaaccccccccccaaaaaaccccaaccccccccccccccaaciiqqqtttxxxwwwyywwwwvvrrrrnnneeecccc
abccccccaaaaaaaaccccccccccaaaaaccccccccaaaaaaccccccccccccaaacccccaaaaaaacccccccaaaaaccccccccaaaaaaaaacccaaccccccccccccccccciiqqqtttttwwswwyywwrrrrrrnnnneeecccc
abccccccccccccacccccccccccaccaaccccaaccaaaaaacccccccccccaccccccccaaacaaacccccccaacaaccccccccaaaaacaaaaaaaacccccccccaacccccciiqqqqttssssswwwwwrrrrnnnnnneeeecccc
abcccccccccccccccccccccccccccccaaaaaaccccaacccccccaaacaaacccccccccccccaacaaacccccccccccccccccccaaaccaaaaaaaaccccaacaacccccciiiqqpppsssssswwwwrrrnnnnneeeeeccccc
abcccccccccccccccccccccccccccccaaaaaaaccccccccccccaaaaaaaccccccccccccccccaaacccccccccccccccccccaaaccaaaaaaaaacccaaaaacccccchhhhppppppppssswwwrroonnfeeeeacccccc
abccccccccccccccccccccaaaaaccccaaaaaaaaccccccccccccaaaaaaccccccccccccccaaaaaaaacccccccccccccccccccccaaaaaaaaaccccaaaaaaccccchhhhhpppppppsssssrroonfffeeaaaacccc
abccccccccccccccccccccaaaaacccccaaaaaaaccccccccccccaaaaaaaaccccccccccccaaaaaaaacccccccccccccccccccccaaaaaacccccaaaaaaaacccccchhhhhhhppppsssssrooofffffaaaaacccc
abcccccaacaaacccccccccaaaaaacccaaaaaacccccccccccccaaaaaaaaacccccccccccccaaaaacccccccccccccccccccccccaaaaaaaccccaaaaaccaccccccchhhhhhhhpppssssrooofffcaaaaaccccc
abcccccaaaaaacccccccccaaaaaacccaaaaaaccccccccccccaaaaaaaaaacccccccccccccaaaaaaccccccccccccccccccccccaccaaaccccccacaaaccaacccccccchhhhhgppooooooofffcaaaaacccccc
abcccccaaaaaacccccccccaaaaaaccccccaaacaacccccccccaaacaaaccccccccccaaacccaaaaaaccccccccccccccccccccccccccaaacccccccaaacaaaccccccccccchgggoooooooffffcaaaaaaccccc
abaccccaaaaaaaccccccccccaaccccccccaaaaaacccccccccccccaaaccccccccccaaaaccaaaccacaacaacccccccccccccccccccccccccccccccaaaaaaaaccccccccccggggoooooffffccaccaaaccccc
abacccaaaaaaaaccccccccccccccccccccaaaaaccccccccccccccaacccccccaaacaaaacccaaccccaaaaacccccccccccccccccccaacaacccccccaaaaaaaacccccccccccggggggggfffcccccccccccccc
abacccaaaaaaaaccccccccaaacccccccccaaaaaaccccccccccccccccccccccaaacaaaacaaaaccccaaaaaaccccccccaaccccccccaaaaaccccccccaaaaaaacccccccccccaaggggggffcccccccccccccca
abcccccccaaacccccccccaaaaaaccccccaaaaaaaacccccccccccccccccccaaaaaaaaaaaaaaaccccaaaaaaccccccacaaaacccccccaaaaacccccccaaaaaccccccccccccaaacgggggaccccccccccccccaa
abcccccccaaccccccccccaaaaaaccccccaaaaaaaacccccccaaacccccccccaaaaaaaaaaaaaaaacccaaaaaaccccccaaaaaaccccccaaaaaaccccccaaaaaaacccccccccccaaaccccaaaccccccccccaaacaa
abcccccccccccccccccccaaaaaccccccccccaaccccccccaaaaaccccccccccaaaaaaaaaaaaaaaaccccaaaccccccccaaaacccccccaaaaccccccccccccaaccccccccccccccccccccccccccccccccaaaaaa
abccccccccccccccccccccaaaaacccccccccaaccccccccaaaaaacccccccccaaaaaaaaaaaaaaaacccccccccccccccaaaacccccccccaacccccccccccccccccccccccccccccccccccccccccccccccaaaaa"

  def input do
    @input
    |> String.split("\n")
    |> Enum.map(fn line -> String.trim(line) end)
    |> Enum.filter(fn line -> String.length(line) > 0 end)
  end
end

defmodule Day12 do
  def to_map(lines) do
    lines
    |> Enum.reduce({0, {0, 0}, {0, 0}, %{}}, fn line, {row, start_c, end_c, map} ->
      {_c, start_c, end_c, map} =
        String.codepoints(line)
        |> Enum.reduce({0, start_c, end_c, map}, fn cell,
                                                    {col, {srow, scol}, {erow, ecol}, grid} ->
          grid = Map.put(grid, {row, col}, cell)

          case cell do
            "S" ->
              {col + 1, {row, col}, {erow, ecol}, grid}

            "E" ->
              {col + 1, {srow, scol}, {row, col}, grid}

            _ ->
              {col + 1, {srow, scol}, {erow, ecol}, grid}
          end
        end)

      {row + 1, start_c, end_c, map}
    end)
  end

  def neighbors({row, col}) do
    [
      {row + 1, col},
      {row - 1, col},
      {row, col + 1},
      {row, col - 1}
    ]
  end

  def can_move?(from_c, to_c, map) do
    from = Map.get(map, from_c)
    to = Map.get(map, to_c)

    case {from, to} do
      {"S", _} -> true
      {"z", "E"} -> true
      {"y", "E"} -> true
      {_, "E"} -> false
      _ -> hd(String.to_charlist(from)) - hd(String.to_charlist(to)) >= -1
    end
  end

  def shortest_path(_map, _start_c, _end_c, shortest, [], _visited) do
    shortest
  end

  def shortest_path(map, start_c, end_c, shortest, [head | tail], visited) do
    case head do
      {c, path_len, _path} when c == end_c ->
        shortest = min(shortest, path_len)

        shortest_path(map, start_c, end_c, shortest, tail, visited)

      {coords, path_len, _path} ->
        visited =
          Map.update(visited, coords, path_len, fn existing ->
            min(existing, path_len)
          end)

        next =
          neighbors(coords)
          |> Enum.filter(fn coord ->
            shortest_to_coord = Map.get(visited, coord, 999_999_999)

            Map.has_key?(map, coord) and path_len + 1 < shortest_to_coord and
              can_move?(coords, coord, map)
          end)

        next =
          next
          |> Enum.map(fn coord -> {coord, path_len + 1, []} end)

        shortest_path(map, start_c, end_c, shortest, next ++ tail, visited)
    end
  end

  def part1 do
    {_cols, start_c, end_c, map} = Input.input() |> to_map()

    IO.inspect({"Start", start_c, "End", end_c})

    result =
      shortest_path(
        map,
        start_c,
        end_c,
        9_999_999_999_999,
        [{start_c, 0, []}],
        %{}
      )

    IO.puts("Part 1")
    IO.inspect(result)
  end

  def part2 do
    {_cols, start_c, end_c, map} = Input.input() |> to_map()

    elevation_a =
      map
      |> Enum.reduce([], fn {k, v}, starts ->
        case v do
          "a" -> [k | starts]
          _ -> starts
        end
      end)

    elevation_a = [start_c | elevation_a]

    dist =
      elevation_a
      |> Enum.map(fn coords ->
        p = shortest_path(map, coords, end_c, 9_999_999, [{coords, 0, []}], %{})
        IO.inspect({"shortest", p})
        p
      end)
      |> Enum.min(fn a, b -> a <= b end)

    IO.inspect({"starts", elevation_a})
    IO.inspect({"dist", dist})

    IO.puts("Part 2")
    dist
  end
end

Day12.part1()
Day12.part2()
