defmodule Input do
  @input "
  noop
addx 3
addx -5"

  @input "
addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop"

  @input "
noop
noop
noop
addx 6
addx -1
addx 5
noop
noop
noop
addx 5
addx -8
addx 9
addx 3
addx 2
addx 4
addx 3
noop
addx 2
noop
addx 1
addx 6
noop
noop
noop
addx -39
noop
addx 5
addx 2
addx -2
addx 3
addx 2
addx 5
addx 2
addx 2
addx 13
addx -12
noop
addx 7
noop
addx 2
addx 3
noop
addx -25
addx 30
addx -10
addx 13
addx -40
noop
addx 5
addx 2
addx 3
noop
addx 2
addx 3
addx -2
addx 3
addx -1
addx 7
noop
noop
addx 5
addx -1
addx 6
noop
noop
noop
noop
addx 9
noop
addx -1
noop
addx -39
addx 2
addx 33
addx -29
addx 1
noop
addx 4
noop
noop
noop
addx 3
addx 2
noop
addx 3
noop
noop
addx 7
addx 2
addx 3
addx -2
noop
addx -30
noop
addx 40
addx -2
addx -38
noop
noop
noop
addx 5
addx 5
addx 2
addx -9
addx 5
addx 7
addx 2
addx 5
addx -18
addx 28
addx -7
addx 2
addx 5
addx -28
addx 34
addx -3
noop
addx 3
addx -38
addx 10
addx -3
addx 29
addx -28
addx 2
noop
noop
noop
addx 5
noop
addx 3
addx 2
addx 7
noop
addx -2
addx 5
addx 2
noop
addx 1
addx 5
noop
noop
addx -25
noop
noop"

  def input do
    @input
    |> String.split("\n")
    |> Enum.map(fn line -> String.trim(line) end)
    |> Enum.filter(fn line -> String.length(line) > 0 end)
  end
end

defmodule Day10 do
  defmodule Instruction do
    defstruct name: "", cycles: 1, args: []
  end

  defmodule Cpu do
    defstruct register: 1, cycles: 0, signal_strengths: [], pixels: []
  end

  def str_to_instruction(str) do
    case String.split(str, " ") do
      ["addx", v] -> %Instruction{name: "addx", cycles: 2, args: [String.to_integer(v)]}
      ["noop"] -> %Instruction{name: "noop", cycles: 1}
    end
  end

  def increment_cycle(cpu) do
    %Cpu{cpu | cycles: cpu.cycles + 1}
  end

  def process_cycle(cpu, [], []) do
    cpu
  end

  def update_signal_strength(cpu) do
    is_interesting = rem(cpu.cycles - 20, 40) == 0

    if is_interesting do
      strength = cpu.cycles * cpu.register
      %Cpu{cpu | signal_strengths: [strength | cpu.signal_strengths]}
    else
      cpu
    end
  end

  def process_cycle(cpu, [instruction | rest], pending_instructions) do
    {n_cpu, instruction} =
      case instruction do
        %Instruction{name: "noop", cycles: 0} ->
          {cpu, nil}

        %Instruction{name: "addx", cycles: 0, args: [v]} ->
          cpu = %Cpu{cpu | register: cpu.register + v}
          {cpu, nil}

        %Instruction{cycles: x} ->
          {cpu, %Instruction{instruction | cycles: x - 1}}
      end

    if instruction == nil do
      process_cycle(n_cpu, rest, pending_instructions)
    else
      cpu = update_signal_strength(increment_cycle(cpu)) |> draw_pixel()
      n_cpu = %Cpu{n_cpu | signal_strengths: cpu.signal_strengths, pixels: cpu.pixels}

      process_cycle(increment_cycle(n_cpu), [instruction | rest], pending_instructions)
    end
  end

  def sprite_visible?(x_register, pixel) do
    case pixel do
      x when x == x_register - 1 -> true
      x when x == x_register -> true
      x when x == x_register + 1 -> true
      _ -> false
    end
  end

  def draw_pixel(cpu) do
    pixel = rem(cpu.cycles - 1, 40)
    vis = sprite_visible?(cpu.register, pixel)

    next_pixel =
      if vis do
        "#"
      else
        "."
      end

    %{cpu | pixels: [next_pixel | cpu.pixels]}
  end

  def part1 do
    instructions =
      Input.input()
      |> Enum.map(&str_to_instruction/1)

    cpu = process_cycle(%Cpu{}, instructions, [])

    result =
      cpu.signal_strengths
      |> Enum.reduce(0, fn strength, sum ->
        sum + strength
      end)

    IO.puts("Part 1")
    IO.inspect(result)
  end

  def part2 do
    instructions =
      Input.input()
      |> Enum.map(&str_to_instruction/1)

    cpu = process_cycle(%Cpu{}, instructions, [])

    pixels = cpu.pixels |> Enum.reverse() |> Enum.chunk_every(40) |> Enum.map(&to_string/1)

    IO.puts("Part 2")
    IO.inspect(pixels)
  end
end

Day10.part1()
Day10.part2()
