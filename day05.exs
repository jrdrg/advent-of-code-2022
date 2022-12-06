defmodule Input do
  @input "
    [D]
[N] [C]
[Z] [M] [P]
 1   2   3

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2"

  @input "
                [M]     [W] [M]
            [L] [Q] [S] [C] [R]
            [Q] [F] [F] [T] [N] [S]
    [N]     [V] [V] [H] [L] [J] [D]
    [D] [D] [W] [P] [G] [R] [D] [F]
[T] [T] [M] [G] [G] [Q] [N] [W] [L]
[Z] [H] [F] [J] [D] [Z] [S] [H] [Q]
[B] [V] [B] [T] [W] [V] [Z] [Z] [M]
1   2   3   4   5   6   7   8   9

move 1 from 7 to 4
move 1 from 6 to 2
move 5 from 9 to 4
move 2 from 2 to 8
move 2 from 2 to 6
move 3 from 3 to 7
move 3 from 7 to 1
move 1 from 9 to 4
move 4 from 7 to 3
move 5 from 1 to 8
move 1 from 1 to 2
move 1 from 4 to 9
move 4 from 5 to 6
move 1 from 5 to 8
move 3 from 2 to 4
move 3 from 6 to 4
move 3 from 5 to 9
move 1 from 9 to 7
move 1 from 9 to 8
move 2 from 7 to 9
move 1 from 7 to 9
move 1 from 7 to 8
move 2 from 9 to 8
move 13 from 4 to 2
move 2 from 6 to 1
move 3 from 3 to 2
move 9 from 2 to 7
move 1 from 9 to 7
move 5 from 7 to 8
move 9 from 8 to 4
move 2 from 7 to 1
move 1 from 1 to 7
move 2 from 3 to 2
move 14 from 4 to 5
move 3 from 8 to 4
move 13 from 8 to 3
move 2 from 7 to 1
move 6 from 6 to 5
move 1 from 6 to 9
move 3 from 2 to 8
move 1 from 7 to 8
move 5 from 2 to 8
move 4 from 4 to 8
move 1 from 9 to 8
move 1 from 7 to 1
move 1 from 1 to 2
move 7 from 3 to 2
move 4 from 3 to 2
move 2 from 5 to 3
move 2 from 1 to 5
move 5 from 8 to 7
move 6 from 8 to 3
move 11 from 5 to 8
move 8 from 8 to 9
move 5 from 7 to 8
move 3 from 1 to 8
move 5 from 3 to 8
move 11 from 2 to 9
move 1 from 3 to 5
move 1 from 2 to 1
move 1 from 2 to 7
move 6 from 5 to 7
move 19 from 9 to 7
move 3 from 5 to 3
move 1 from 5 to 4
move 1 from 1 to 4
move 1 from 9 to 8
move 25 from 7 to 9
move 2 from 4 to 1
move 2 from 1 to 4
move 2 from 4 to 7
move 2 from 7 to 9
move 5 from 3 to 1
move 1 from 7 to 1
move 9 from 9 to 5
move 3 from 5 to 6
move 9 from 9 to 1
move 7 from 1 to 3
move 6 from 8 to 9
move 1 from 5 to 2
move 10 from 9 to 2
move 1 from 2 to 7
move 5 from 9 to 8
move 1 from 5 to 8
move 5 from 3 to 8
move 1 from 9 to 4
move 4 from 3 to 6
move 4 from 6 to 3
move 3 from 1 to 4
move 3 from 2 to 4
move 3 from 5 to 8
move 3 from 4 to 9
move 1 from 7 to 3
move 2 from 9 to 8
move 4 from 2 to 5
move 1 from 3 to 4
move 1 from 9 to 3
move 5 from 5 to 6
move 7 from 8 to 5
move 3 from 1 to 7
move 6 from 5 to 8
move 5 from 4 to 5
move 3 from 3 to 2
move 1 from 1 to 4
move 19 from 8 to 1
move 3 from 7 to 3
move 4 from 2 to 9
move 1 from 2 to 6
move 7 from 6 to 4
move 1 from 6 to 2
move 2 from 1 to 3
move 5 from 4 to 1
move 1 from 6 to 2
move 3 from 3 to 6
move 12 from 1 to 2
move 2 from 8 to 1
move 14 from 2 to 4
move 7 from 1 to 5
move 10 from 4 to 6
move 3 from 6 to 4
move 1 from 8 to 4
move 4 from 3 to 5
move 1 from 2 to 3
move 2 from 1 to 4
move 17 from 5 to 3
move 7 from 4 to 1
move 1 from 9 to 4
move 4 from 6 to 3
move 5 from 4 to 8
move 12 from 3 to 1
move 6 from 3 to 5
move 17 from 1 to 5
move 2 from 1 to 9
move 3 from 1 to 4
move 7 from 8 to 2
move 4 from 3 to 7
move 1 from 1 to 8
move 17 from 5 to 2
move 11 from 2 to 8
move 11 from 8 to 4
move 11 from 2 to 4
move 4 from 6 to 1
move 4 from 1 to 3
move 2 from 6 to 9
move 3 from 7 to 8
move 3 from 5 to 3
move 23 from 4 to 3
move 4 from 4 to 8
move 1 from 7 to 4
move 2 from 2 to 3
move 6 from 3 to 2
move 16 from 3 to 9
move 2 from 5 to 8
move 1 from 4 to 5
move 2 from 5 to 9
move 1 from 2 to 3
move 1 from 3 to 8
move 9 from 9 to 1
move 6 from 3 to 8
move 3 from 3 to 1
move 18 from 8 to 9
move 1 from 3 to 5
move 5 from 1 to 4
move 5 from 1 to 8
move 3 from 4 to 1
move 1 from 5 to 2
move 2 from 4 to 8
move 1 from 1 to 2
move 5 from 2 to 7
move 2 from 8 to 1
move 2 from 2 to 6
move 3 from 1 to 6
move 3 from 9 to 6
move 31 from 9 to 7
move 26 from 7 to 8
move 3 from 1 to 6
move 22 from 8 to 4
move 2 from 4 to 5
move 4 from 6 to 5
move 11 from 4 to 3
move 9 from 4 to 6
move 2 from 5 to 9
move 4 from 7 to 1
move 2 from 6 to 1
move 1 from 5 to 3
move 6 from 8 to 6
move 8 from 6 to 2
move 1 from 1 to 6
move 3 from 1 to 3
move 1 from 5 to 3
move 1 from 5 to 9
move 5 from 7 to 2
move 2 from 9 to 6
move 4 from 8 to 6
move 1 from 7 to 2
move 1 from 5 to 4
move 12 from 3 to 4
move 3 from 3 to 1
move 3 from 6 to 8
move 1 from 9 to 3
move 6 from 2 to 6
move 2 from 3 to 2
move 10 from 2 to 7
move 2 from 1 to 9
move 2 from 1 to 6
move 1 from 1 to 4
move 9 from 7 to 9
move 3 from 8 to 7
move 7 from 4 to 8
move 2 from 7 to 4
move 4 from 8 to 1
move 5 from 8 to 2
move 3 from 1 to 3
move 1 from 8 to 7
move 3 from 3 to 7
move 4 from 2 to 6
move 8 from 4 to 2
move 5 from 2 to 5
move 11 from 9 to 7
move 2 from 5 to 7
move 16 from 7 to 8
move 5 from 8 to 7
move 1 from 4 to 3
move 3 from 5 to 1
move 11 from 6 to 5
move 7 from 5 to 4
move 5 from 7 to 4
move 1 from 3 to 7
move 2 from 5 to 4
move 10 from 4 to 8
move 14 from 6 to 3
move 1 from 5 to 9
move 1 from 6 to 5
move 2 from 2 to 9
move 2 from 1 to 3
move 2 from 5 to 3
move 2 from 7 to 6
move 2 from 1 to 4
move 1 from 2 to 3
move 19 from 3 to 6
move 3 from 9 to 2
move 4 from 2 to 6
move 6 from 6 to 7
move 13 from 6 to 2
move 14 from 8 to 1
move 6 from 4 to 3
move 5 from 7 to 8
move 3 from 6 to 3
move 2 from 8 to 2
move 2 from 6 to 8
move 4 from 1 to 8
move 13 from 8 to 4
move 10 from 4 to 7
move 1 from 4 to 5
move 1 from 5 to 1
move 3 from 6 to 5
move 3 from 8 to 9
move 9 from 3 to 1
move 3 from 5 to 8
move 3 from 9 to 6
move 3 from 8 to 7
move 1 from 6 to 9
move 1 from 9 to 4
move 9 from 2 to 8
move 2 from 2 to 6
move 14 from 7 to 1
move 31 from 1 to 5
move 3 from 1 to 7
move 4 from 6 to 8
move 24 from 5 to 3
move 2 from 8 to 1
move 1 from 8 to 5
move 2 from 1 to 7
move 3 from 7 to 6
move 6 from 8 to 6
move 2 from 4 to 2
move 1 from 4 to 3
move 2 from 2 to 7
move 6 from 6 to 7
move 4 from 8 to 6
move 7 from 6 to 2
move 12 from 7 to 5
move 4 from 2 to 8
move 1 from 2 to 4
move 1 from 4 to 6
move 1 from 6 to 7
move 1 from 7 to 3
move 3 from 3 to 8
move 17 from 3 to 5
move 4 from 3 to 6
move 35 from 5 to 3
move 2 from 2 to 6
move 1 from 5 to 9
move 9 from 3 to 7
move 6 from 8 to 1
move 4 from 2 to 6
move 4 from 6 to 9
move 20 from 3 to 9
move 22 from 9 to 7
move 1 from 8 to 6
move 29 from 7 to 5
move 4 from 6 to 8
move 6 from 1 to 8
move 2 from 7 to 3
move 1 from 6 to 5
move 2 from 3 to 9
move 1 from 9 to 3
move 4 from 5 to 6
move 18 from 5 to 1
move 7 from 3 to 1
move 1 from 3 to 6
move 3 from 5 to 1
move 1 from 3 to 9
move 4 from 5 to 2
move 10 from 8 to 7
move 2 from 9 to 3
move 1 from 3 to 5
move 21 from 1 to 9
move 1 from 3 to 2
move 1 from 2 to 9
move 15 from 9 to 3
move 4 from 7 to 1
move 2 from 6 to 1
move 7 from 9 to 1
move 1 from 5 to 4
move 1 from 4 to 6
move 6 from 3 to 9
move 3 from 6 to 5
move 19 from 1 to 6
move 8 from 3 to 6
move 1 from 3 to 7
move 20 from 6 to 7
move 1 from 2 to 6
move 6 from 9 to 8
move 2 from 9 to 4
move 1 from 1 to 3
move 1 from 2 to 9
move 3 from 5 to 6
move 2 from 7 to 3
move 2 from 9 to 7
move 1 from 4 to 8
move 4 from 8 to 9
move 4 from 7 to 1
move 2 from 1 to 7
move 1 from 3 to 2
move 2 from 8 to 9
move 6 from 6 to 2
move 1 from 8 to 1
move 1 from 5 to 7
move 4 from 2 to 9
move 1 from 3 to 5
move 5 from 6 to 1
move 1 from 4 to 2
move 1 from 9 to 6
move 1 from 9 to 6
move 4 from 6 to 3
move 7 from 9 to 7
move 8 from 7 to 2
move 1 from 5 to 8
move 5 from 2 to 9
move 3 from 2 to 5
move 6 from 1 to 3
move 17 from 7 to 6
move 1 from 8 to 2
move 2 from 1 to 7
move 5 from 9 to 4
move 4 from 3 to 8
move 3 from 4 to 1
move 1 from 9 to 2
move 4 from 2 to 1
move 1 from 8 to 4
move 1 from 5 to 9
move 1 from 2 to 3
move 3 from 3 to 2
move 10 from 7 to 6
move 3 from 4 to 1
move 5 from 3 to 2
move 4 from 1 to 5
move 3 from 8 to 6
move 12 from 6 to 4
move 1 from 9 to 3
move 1 from 5 to 2
move 3 from 1 to 6
move 12 from 6 to 8
move 3 from 1 to 5
move 2 from 4 to 3
move 5 from 8 to 7
move 7 from 5 to 3
move 3 from 7 to 9
move 1 from 5 to 8
move 5 from 3 to 7
move 10 from 6 to 5
move 2 from 7 to 5
move 8 from 2 to 9
move 5 from 3 to 9
move 9 from 5 to 1
move 5 from 7 to 4
move 15 from 9 to 5
move 1 from 2 to 5
move 1 from 8 to 5
move 6 from 4 to 1
move 2 from 2 to 9
move 18 from 5 to 8
move 18 from 8 to 3
move 16 from 3 to 4
move 3 from 5 to 8
move 1 from 9 to 2
move 3 from 1 to 7
move 3 from 8 to 2
move 3 from 7 to 9
move 2 from 3 to 4
move 3 from 9 to 8
move 11 from 1 to 6
move 2 from 9 to 4
move 3 from 6 to 9
move 8 from 6 to 4
move 26 from 4 to 7
move 1 from 2 to 5
move 1 from 5 to 2
move 3 from 9 to 3
move 21 from 7 to 6
move 4 from 2 to 4
move 1 from 2 to 3
move 5 from 7 to 6
move 8 from 8 to 1
move 1 from 3 to 7
move 9 from 1 to 4
move 1 from 7 to 4
move 20 from 4 to 7
move 1 from 8 to 5
move 2 from 4 to 8
move 1 from 4 to 9
move 3 from 8 to 9
move 1 from 5 to 8
move 2 from 3 to 1
move 4 from 7 to 8
move 3 from 7 to 5
move 1 from 1 to 7
move 4 from 8 to 3
move 3 from 5 to 6
move 1 from 8 to 4
move 1 from 1 to 8
move 28 from 6 to 4
move 1 from 6 to 1
move 2 from 7 to 8
move 1 from 8 to 7
move 1 from 8 to 1
move 2 from 1 to 9
move 3 from 9 to 3
move 12 from 7 to 5
move 7 from 3 to 1
move 1 from 3 to 6
move 26 from 4 to 9
move 1 from 6 to 3
move 1 from 3 to 6
move 1 from 8 to 6
move 1 from 7 to 8
move 1 from 6 to 3
move 3 from 1 to 3
move 5 from 4 to 3
move 28 from 9 to 4
move 2 from 1 to 5
move 22 from 4 to 1
move 3 from 5 to 3
move 5 from 5 to 7
move 10 from 1 to 6
move 1 from 5 to 2
move 3 from 5 to 3
move 2 from 5 to 9
move 3 from 9 to 7
move 2 from 4 to 5
move 1 from 5 to 4
move 4 from 3 to 8
move 1 from 5 to 7
move 9 from 6 to 5
move 1 from 7 to 6
move 1 from 6 to 5
move 2 from 6 to 9
move 3 from 5 to 1
move 13 from 1 to 3
move 7 from 7 to 5
move 1 from 2 to 9
move 3 from 8 to 2
move 1 from 7 to 2
move 3 from 4 to 3
move 19 from 3 to 8
move 5 from 3 to 7
move 1 from 7 to 1
move 19 from 8 to 6
move 5 from 1 to 4
move 5 from 5 to 2
move 2 from 2 to 7
move 3 from 4 to 1
move 6 from 5 to 7
move 2 from 8 to 7
move 2 from 2 to 7
move 3 from 3 to 5
move 5 from 7 to 6
move 6 from 6 to 1
move 2 from 5 to 1
move 2 from 4 to 3
move 1 from 5 to 8"

  @spec input() :: [String.t()]
  def input do
    @input
    |> String.split("\n")
    |> Enum.filter(fn line -> String.length(line) > 0 end)
  end
end

defmodule Day05 do
  def split_boxes_and_instructions(lines) do
    lines
    |> Enum.chunk_by(fn line ->
      line |> String.match?(~r/^[\d\s]+$/)
    end)
  end

  def push_to_stack("", col, box_map) do
    box_map
  end

  def push_to_stack(crate, col, box_map) do
    Map.update(box_map, col, [crate], fn stack ->
      [crate | stack]
    end)
  end

  def get_boxes(line) do
    line |> String.codepoints() |> Enum.chunk_every(4)
  end

  def boxes_to_matrix([], col, box_map, {rows, cols}) do
    {box_map, rows, cols}
  end

  def boxes_to_matrix([[] | tail], col, box_map, {rows, cols}) do
    boxes_to_matrix(tail, 1, box_map, {rows + 1, cols})
  end

  def boxes_to_matrix([[head | tail_boxes] | tail], col, box_map, {rows, cols}) do
    crate =
      head
      |> Enum.filter(fn l ->
        String.match?(l, ~r/^[A-Za-z]$/)
      end)
      |> to_string()

    box_map = push_to_stack(crate, col, box_map)

    boxes_to_matrix([tail_boxes | tail], col + 1, box_map, {rows, max(col, cols)})
  end

  def parse_instructions(instruction) do
    instruction
    |> String.replace(~r/move (\d+) from (\d+) to (\d+)/, "\\1 \\2 \\3")
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> List.to_tuple()
  end

  def handle_instruction(box_map, {0, from, to}) do
    box_map
  end

  def handle_instruction(box_map, {num, from, to}) do
    {[head | tail], box_map} = Map.pop!(box_map, from)

    box_map =
      Map.put(box_map, from, tail)
      |> Map.update!(to, fn stack ->
        [head | stack]
      end)

    handle_instruction(box_map, {num - 1, from, to})
  end

  def handle_instruction_part2(box_map, {num, from, to}) do
    {stack, box_map} = Map.pop!(box_map, from)
    {list, tail} = Enum.split(stack, num)

    box_map =
      Map.put(box_map, from, tail)
      |> Map.update!(to, fn stack ->
        list ++ stack
      end)
  end

  def setup do
    [boxes, nums, instructions] = split_boxes_and_instructions(Input.input())

    {box_map, rows, cols} =
      boxes |> Enum.reverse() |> Enum.map(&get_boxes/1) |> boxes_to_matrix(1, Map.new(), {1, 0})

    {box_map, instructions}
  end

  def get_top_boxes(box_map) do
    box_map |> Map.values() |> Enum.map(&hd/1) |> to_string()
  end

  def part1 do
    {box_map, instructions} = setup()

    result =
      instructions
      |> Enum.map(&parse_instructions/1)
      |> Enum.reduce(box_map, fn instruction, map ->
        handle_instruction(map, instruction)
      end)

    top_boxes = get_top_boxes(result)

    IO.puts("Part 1")
    IO.inspect(top_boxes)
  end

  def part2 do
    {box_map, instructions} = setup()

    result =
      instructions
      |> Enum.map(&parse_instructions/1)
      |> Enum.reduce(box_map, fn instruction, map ->
        handle_instruction_part2(map, instruction)
      end)

    top_boxes = get_top_boxes(result)

    IO.puts("Part 2")
    IO.inspect(top_boxes)
  end
end

Day05.part1()
Day05.part2()
