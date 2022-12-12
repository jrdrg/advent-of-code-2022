defmodule Input do
  @input "
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1"

  @input "
Monkey 0:
  Starting items: 56, 56, 92, 65, 71, 61, 79
  Operation: new = old * 7
  Test: divisible by 3
    If true: throw to monkey 3
    If false: throw to monkey 7

Monkey 1:
  Starting items: 61, 85
  Operation: new = old + 5
  Test: divisible by 11
    If true: throw to monkey 6
    If false: throw to monkey 4

Monkey 2:
  Starting items: 54, 96, 82, 78, 69
  Operation: new = old * old
  Test: divisible by 7
    If true: throw to monkey 0
    If false: throw to monkey 7

Monkey 3:
  Starting items: 57, 59, 65, 95
  Operation: new = old + 4
  Test: divisible by 2
    If true: throw to monkey 5
    If false: throw to monkey 1

Monkey 4:
  Starting items: 62, 67, 80
  Operation: new = old * 17
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 6

Monkey 5:
  Starting items: 91
  Operation: new = old + 7
  Test: divisible by 5
    If true: throw to monkey 1
    If false: throw to monkey 4

Monkey 6:
  Starting items: 79, 83, 64, 52, 77, 56, 63, 92
  Operation: new = old + 6
  Test: divisible by 17
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 7:
  Starting items: 50, 97, 76, 96, 80, 56
  Operation: new = old + 3
  Test: divisible by 13
    If true: throw to monkey 3
    If false: throw to monkey 5"

  def input do
    @input
    |> String.split("\n")
    |> Enum.map(fn line -> String.trim(line) end)
    |> Enum.filter(fn line -> String.length(line) > 0 end)
  end
end

defmodule Day11 do
  defmodule Operation do
    defstruct definition: [:old, :add, :old]
  end

  defmodule Test do
    defstruct divisible: 1, true?: 0, false?: 0
  end

  defmodule Monkey do
    defstruct number: 0, items: [], operation: %Operation{}, test: %Test{}, inspected_count: 0
  end

  def parse_lines([], monkey, monkeys) do
    Map.put(monkeys, monkey.number, monkey)
  end

  def parse_lines([head | tail], monkey, monkeys) do
    monkey =
      case String.split(head, " ") do
        ["Monkey", m] ->
          %Monkey{number: m |> String.replace(":", "") |> String.to_integer()}

        ["Starting", "items:" | rest] ->
          items =
            rest
            |> Enum.map(fn i -> String.replace(i, ",", "") end)
            |> Enum.map(&String.to_integer/1)

          %{monkey | items: items}

        ["Operation:", "new", "=" | rest] ->
          op =
            case rest do
              [_, "*", _] -> :multiply
              [_, "/", _] -> :divide
              [_, "+", _] -> :add
              [_, "-", _] -> :subtract
            end

          operation =
            case(rest) do
              ["old", _, "old"] -> [:old, op, :old]
              [val, _, "old"] -> [String.to_integer(val), op, :old]
              ["old", _, val] -> [:old, op, String.to_integer(val)]
              [val1, _, val2] -> [String.to_integer(val1), op, String.to_integer(val2)]
            end

          %{monkey | operation: %{monkey.operation | definition: operation}}

        ["Test:", "divisible", "by", value] ->
          test = %Test{divisible: String.to_integer(value)}
          %{monkey | test: test}

        ["If", "true:", "throw", "to", "monkey", num] ->
          test = %{monkey.test | true?: String.to_integer(num)}
          %{monkey | test: test}

        ["If", "false:", "throw", "to", "monkey", num] ->
          test = %{monkey.test | false?: String.to_integer(num)}
          %{monkey | test: test}
      end

    monkeys = Map.put(monkeys, monkey.number, monkey)
    parse_lines(tail, monkey, monkeys)
  end

  def monkey_turn(monkey, monkeys) do
    removed_all_items = %{monkey | items: []}

    Enum.reverse(monkey.items)
    |> Enum.reduce(Map.put(monkeys, monkey.number, removed_all_items), fn item, result ->
      [left, right] =
        case monkey.operation do
          %Operation{definition: [:old, _, :old]} -> [item, item]
          %Operation{definition: [val, _, :old]} -> [val, item]
          %Operation{definition: [:old, _, val]} -> [item, val]
          %Operation{definition: [val, _, val]} -> [val, val]
        end

      worry_level =
        case monkey.operation do
          %Operation{definition: [_, :add, _]} -> left + right
          %Operation{definition: [_, :subtract, _]} -> left - right
          %Operation{definition: [_, :multiply, _]} -> left * right
          %Operation{definition: [_, :divide, _]} -> div(left, right)
        end

      worry_level = div(worry_level, 3)

      result =
        Map.update!(result, monkey.number, fn existing ->
          %{existing | inspected_count: existing.inspected_count + 1}
        end)

      if rem(worry_level, monkey.test.divisible) == 0 do
        throw_to = Map.get(result, monkey.test.true?)

        throw_to = %{
          throw_to
          | # | items: [worry_level | Enum.reverse(throw_to.items)] |> Enum.reverse()
            items: [worry_level | throw_to.items]
        }

        Map.put(result, throw_to.number, throw_to)
      else
        throw_to = Map.get(result, monkey.test.false?)

        throw_to = %{
          throw_to
          | items: [worry_level | throw_to.items]
        }

        Map.put(result, throw_to.number, throw_to)
      end
    end)
  end

  def monkey_round(monkeys, 0) do
    monkeys
  end

  def monkey_round(monkeys, count) do
    result =
      Map.keys(monkeys)
      |> Enum.reduce(monkeys, fn monkey_id, result ->
        monkey = Map.get(result, monkey_id)
        monkey_turn(monkey, result)
      end)

    monkey_round(result, count - 1)
  end

  def part1 do
    monkeys = Input.input() |> parse_lines(%Monkey{}, %{})

    result =
      monkey_round(monkeys, 20)
      |> Map.values()
      |> Enum.sort(fn a, b ->
        a.inspected_count >= b.inspected_count
      end)
      |> Enum.take(2)
      |> Enum.reduce(1, fn monkey, total ->
        total * monkey.inspected_count
      end)

    IO.puts("Part 1")
    IO.inspect(result)
  end

  def part2 do
    IO.puts("Part 2")
  end
end

Day11.part1()
Day11.part2()
