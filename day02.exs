defmodule Input do
  @input "
A Y
B X
C Z"

  @input "
C Y
C Z
B Z
A Z
A Z
A Y
A Z
C Y
C Z
A Y
A Y
B X
A Y
C Z
C Z
B X
C Z
A Z
B Y
C Z
A Y
C X
B Y
A Z
B Y
C Z
B Z
B Y
C Z
A Z
A Z
B Z
C Z
A X
B X
C Y
C Z
C Z
C Z
A Y
C Z
C Z
C Z
C X
A Z
A Z
C Y
A Z
C Z
C Z
C Z
A Z
B Y
C Z
A Z
B Z
A Z
A Y
B X
B X
C Z
C X
C Z
C Z
A Z
B Z
B X
B X
B Y
C X
C Y
A Y
C Z
A Y
C Z
A X
B X
B X
C X
B X
B X
A Y
B Y
C Y
A Z
C Y
B Y
B X
B X
B Z
B X
B Z
A Z
B Y
C Z
B Z
B Z
B Y
A Y
C Z
A Z
C Y
C Z
B Z
C Z
C Z
B Y
A Z
C Z
C Z
A Z
A Z
B X
C Y
A Y
C Z
B Y
C Z
A Y
C X
C X
B Y
C Z
C X
C Z
B Y
A Y
B Z
C Z
B Y
C Y
C Z
C Z
B Z
C Z
A Z
A Y
C Z
C Z
B Y
A Z
C Z
C Z
C Y
B Y
C Z
C Z
C Z
C Z
A X
B Y
C Z
B Y
C Z
B Y
C X
C Y
A X
C Z
B X
B X
A Z
A Z
A Z
B Y
C Z
B Z
A Z
B Y
C Y
C Z
C Z
C Z
C Y
C Z
B Y
C Z
C Z
B Z
A Y
B Z
C Z
C Y
A Z
C X
B Z
C Y
B Y
C Z
C Z
A Z
C Y
C Y
C Y
B Y
C Z
C X
B Y
C Z
C Y
B Z
A Y
C Z
A Y
B Z
A Y
A Y
B Z
A Z
C Z
C Z
B X
C Z
C Z
B X
B Y
C Z
C X
A X
C Z
C Z
C Z
B X
B X
A Z
C Z
C X
A Z
C Z
C Z
A Z
B Z
C Z
B Y
C Z
A Y
B Z
C Z
C Z
C Z
C X
A X
A Y
B Y
C Z
B Y
C X
A Y
C Z
C Z
B Y
B Z
C Z
B Y
B Y
B Y
A Y
C Z
B Z
A X
B Y
C Z
C Z
C X
A Y
C Z
A X
B Y
A X
A Z
B X
B X
C Z
C Z
A X
C Z
A Y
B Y
B Z
C X
C Y
B X
C Z
C Y
B Y
C Z
C X
B Z
C Z
C Z
C X
C Y
C Z
A Y
C Z
C Z
C Z
C Z
C Z
C Y
B Y
C Z
A X
A Z
C Y
B Z
B X
A Z
C Z
C Y
C Z
C X
A Y
C Z
A Z
B Y
B Z
C Z
B Z
A Y
C Z
B Y
C Z
C Y
C Z
C X
A Y
A Y
C Y
C Z
C Z
B Y
A Z
C Z
C Y
A Y
A Z
A Z
C X
C Z
B X
C Y
C Z
C Z
B Y
C Z
B X
C Z
B Z
B Y
C X
C X
A X
B Y
A Z
C X
B X
A Z
C Z
C Z
A X
A Y
B X
C Z
A X
C Z
B Y
C Z
A Y
B Y
C Z
B Z
B Y
A Z
C Z
A X
B Z
C Y
B Z
B Y
A Z
A Y
A Z
A X
C X
A X
C Y
C Z
A Y
C Y
B X
A X
A Y
C Y
B Y
C Z
C Z
B Z
C Z
C Z
C Z
C Z
C Z
C Z
C Z
B Y
C Z
A Y
B Y
C Y
C X
C Z
B Z
B Y
C Y
C Z
A Z
C Y
B Z
C Z
A Z
C X
B Y
B Y
B Y
C Z
B Y
A Y
C Z
C Z
A Z
A Z
C Z
B Z
B Y
C Z
B Y
B Z
C Z
A X
A X
C X
C Y
A Y
C Z
A Y
A Z
C Z
C Z
C Z
B Y
A Z
B Z
C X
B X
C X
B Y
C Z
A Z
C Z
A X
B Z
B Z
B Y
A Y
C Z
B X
C Z
B Z
C X
A X
C Z
C Z
B Z
B Y
C Z
C Z
A Z
C Y
C Z
B Y
A Y
B Y
A Y
C Z
C Y
B Z
A Y
C Z
B X
B X
B X
C Y
C Z
A Y
C Z
C Z
C Z
A Y
C Z
B X
A Z
C Z
C Z
A Y
C Z
C Z
B X
C Z
B Y
A Z
C X
C Y
C Y
C Z
C Y
A Y
B Z
C Z
C Z
C Z
B Y
C Z
C Z
A Y
A X
A Y
C Y
C Z
C Z
A X
B Z
C Z
C Z
B Z
B Y
C Z
A X
C X
A Z
B Z
C Z
A X
C X
C Z
B Y
A X
A X
C Z
C Z
B X
C Z
B Z
B Y
A X
C Y
C Z
C X
A Y
B Y
C Z
C Z
C Z
C Z
B Z
A Y
C Z
C Z
B Z
C Y
B Z
B X
B Y
A Z
C Z
A Z
B Y
C Y
C Z
C Z
C Z
B Z
C Z
C X
C Z
B X
C Y
B Y
C Z
C Z
C Z
C Z
B Y
B Y
C Z
B Y
C X
B Z
A X
C X
C Z
B X
C Z
C X
C Z
A X
A Z
B X
C Z
C Z
B Y
C Z
A Y
C Z
C Z
C Y
C Z
A Z
A X
C X
B Y
A Y
B Y
A X
C Z
B Y
B Y
C Z
C Z
B Y
B X
A Y
C Z
B Y
C Y
C Z
C Z
C X
B Y
A Z
C Z
A Z
A X
C X
A Z
C Z
C Z
A X
B Z
C Z
B Y
A Z
A Y
A X
A Y
A X
C Z
A X
B Y
A Y
B Z
C Y
C Z
B Z
C X
A Y
A Y
C Z
C Y
C Z
B Y
B Y
B Y
B X
C Z
C X
B Y
C Z
C Z
B Y
C Z
C Z
B Y
C Z
C Y
C Z
C Y
C Z
C Y
A Y
A Y
C Y
C Y
C Y
C Y
C Z
C X
B Z
B Z
C X
C Z
B Y
B Y
A Z
C Y
C Z
C Z
C X
C Z
C Z
A Z
B Y
C Z
A Y
C Z
C Z
C Z
A Z
C X
C Y
B Y
A Z
B Z
C Z
B Y
C Z
B Z
C X
A X
C Y
A Y
B Z
B Y
A X
C Z
B Z
C Z
C Z
C X
B Z
C X
A Z
B Z
C Z
C Z
C Z
B Y
A X
C Z
C Y
C Y
C Z
A Z
C Z
C Z
A X
C Y
B Y
A Y
A Z
A Z
B Z
C Z
A Z
B Y
B Y
A Y
A Z
A Z
C Z
C Z
C Z
A X
C Z
B Z
B X
C Y
A Z
B Y
C Z
B Y
A X
C Z
A Z
C Z
B Z
C Y
C Z
B Y
A Z
B Z
A Y
B X
C Z
B Y
C Z
C Z
C X
C Y
C Z
B X
C X
A Y
A Y
C Z
C Y
B Y
C Y
C Y
C Z
A Y
A Z
B Y
C Z
C Z
A X
C Z
C Y
C Z
B X
C Y
A Z
A Y
A Z
C X
C Z
C Z
C Z
B Z
C Y
B Z
C Z
B Y
C Z
B Y
A Y
B X
C Z
A Y
C Z
A Y
A Z
A Z
B Z
A Y
C Z
A X
B Y
C Z
B Z
C Z
A Y
A Y
B Z
B X
B X
C Y
C Z
C Z
C Y
A X
B Z
C X
B Y
C X
B X
C X
C X
C Z
A Y
C Y
C Z
B Z
A Z
A Z
C Z
A Z
C Z
A Z
A X
B Y
A X
A Y
C X
B Y
C Z
A X
B X
C Z
C Z
C X
B X
A Z
B X
C Z
B Y
C Z
C X
C Z
C X
C Z
B Z
B Y
C Z
B X
C X
C Z
C Y
A Z
B Z
A X
B X
B X
C Z
B Z
C X
A Y
C Z
C Z
B Y
C X
C Z
A X
B Y
C Z
C Z
C Z
C Z
C Z
A X
A Z
C X
A Z
C Z
A Z
C Z
B Y
B Z
A X
C X
C Z
B Z
A Z
C Z
C Y
C Z
C Z
C X
A Y
B Y
C Z
A Y
C Z
B Z
C X
B Z
B Z
B X
B Z
C Y
C Z
C Y
B Y
C Y
C Z
C X
C X
A Z
B Y
C Z
A Y
B X
C Y
A Y
A Z
B Y
B Y
A Y
B Y
B Z
A X
C Z
B Y
A X
C Z
C Z
C X
B Y
A Z
A X
B Y
A Z
C Z
B Z
B Z
B Y
B Y
A Z
A Z
A Y
C Z
C Z
A Z
C Z
C Z
C Z
A X
C Z
A Y
C Y
A Z
C Z
B Y
C X
B Y
C Z
C Z
C Z
A Z
B Z
B X
C Z
C Z
A Y
B Z
B X
C Z
C Y
A Y
C Y
C Y
C Z
C Y
C X
C Y
B Z
B Y
C Z
A Z
A Y
C Z
C Z
B Y
B Y
A Z
A Z
A X
C Z
C Z
A Y
B Y
C X
C Z
C Z
A Z
C Z
B X
B Y
A Y
C Z
A X
A Y
C Z
B X
C X
B Z
C Y
C X
B Y
B Y
C Z
C Z
C X
C Z
A Y
A Z
C Y
C Z
A Z
C Z
C Y
A X
C X
C Z
B X
C Z
B X
C Z
C Z
C Z
B X
B Y
B Y
B Y
C X
B Y
C Z
C Y
C Z
C Z
B X
C Y
B Z
C Z
C Y
C X
C Z
A X
A Z
C Z
C Y
C X
C Z
B Y
C X
C Y
C Z
C X
A Z
B Y
B X
C X
C Y
B Z
C Z
C Y
B Z
C X
A Z
A Y
C Z
C Z
C X
B Y
C Y
C Z
A Z
B Z
B Y
B Y
B Z
C Z
A X
B Y
A Z
A Y
C Z
C Z
B Y
C Y
C Z
B Z
A Z
B Z
C Z
C Z
B Y
B X
C Z
C Y
C Z
A Y
C Z
A X
C X
B Y
B X
C X
C Z
C X
B Z
C Z
A Z
B Z
C Z
A X
C Z
C Z
A Y
B Y
B Z
B X
B Z
C X
B Y
C Z
C Z
C Z
A Z
C Z
C X
C X
B Y
C X
C X
C Z
C Z
A Z
C Y
C Z
C Z
B Z
C Z
A Y
B Y
C Z
C Z
B Y
B Y
C X
C Z
B X
A Y
B Z
A Y
A Y
A Y
C Y
C Y
C Z
B X
B Z
C Z
C X
C X
B Z
A Z
A X
B Y
C Z
B Z
A Z
B X
C Z
A Y
C Z
A Z
A Z
C Z
C X
C Z
C Y
A X
B Y
C Z
C Z
C Z
C Z
C Z
A Y
C X
C Z
A Y
B X
C Z
A Y
C Z
C Z
C Y
B Z
B X
C Z
A X
B Y
C Z
C Z
A X
A Y
C Z
C Y
B Y
C Z
C Z
A Y
A Y
A Y
A Y
C Z
A X
A Z
B Y
B Z
A Z
C Y
C Z
C Z
C Z
A Z
C Z
A Z
C Z
C Z
A Z
C Z
C Z
A Z
B X
C Z
A Y
B Y
C Z
A X
C Z
A Y
C Z
C Z
C Y
C Z
A X
B Y
C Z
A Z
C Z
A Z
A Z
B Y
C X
B Y
C X
C X
C Z
A Y
B Z
A Y
C Z
C Z
B Z
A Y
C Z
B Y
C Z
A X
C Z
C Z
C Z
B Z
A X
B Y
C Z
A X
C Z
C X
B Y
C Z
A Y
C Y
B Y
A Y
C Z
A X
B Y
A Y
A Z
C Z
C Z
C X
A Z
C Z
C Z
B Y
B X
A Z
C Z
B X
C Z
C Y
C Z
C Z
C Z
C Y
A Y
C Z
C Y
C Z
C Z
B Y
B Y
B X
C Y
B Z
C Z
B Y
C Z
C Z
C Z
A Z
A Y
C Y
C Z
C Z
A Z
C Z
C Z
C Z
B Y
B X
B Y
A Y
C Z
B Z
C Z
B Y
B Z
A Y
C Z
C Z
C Y
A Y
C Z
C Z
B Y
A Z
A Y
C Z
C Z
B Y
C Z
B Y
B Z
C X
C Y
C Z
A Y
C Z
A Z
A X
B X
C Z
C Y
C Z
C X
B X
B Y
B Y
C Z
C Z
C Z
A X
B Z
C Z
A Z
A Z
C Z
B Y
B X
B Y
C Z
B Z
C Z
B X
B Z
C Z
B X
A X
C Z
C X
B Z
C Y
C X
C Z
C X
A X
A X
C Z
C Z
C Z
B X
B X
C Z
C Z
C X
C X
C Z
A Y
B Y
B Y
B Y
C Z
C Y
C Z
C Z
C Z
B Y
C Y
C Z
B X
C Z
A X
C Y
A Y
C X
A Y
A Z
C Z
B Y
B Y
A Z
C Y
B Z
B Z
A X
B Y
C Z
B X
A Z
A Z
C Z
B Z
A Z
C X
B Z
C Z
C Z
C Z
C Z
B X
B Y
C Z
C Z
C X
C Y
A Z
B X
B Y
B Z
C Z
B Z
C Z
C Z
C Z
C Z
A Y
C X
C Z
A Y
C Z
C Z
B Z
C Z
A Z
C Z
A Y
C X
C Z
A X
C X
C Z
C Z
B Y
C Z
A Z
C X
C Z
B Y
A Y
B Y
C Z
B X
A X
C Z
B Y
C Z
B Y
A Z
A Z
C Z
A Z
B Y
C Z
C Y
B X
C Z
A Z
B Z
C Z
C Y
C Z
B Z
A X
A X
A Z
C Z
C Z
C Y
C X
C X
A X
C X
B X
C X
A Y
C Y
C Z
C Z
C Z
C Z
C X
A Y
C Y
A Y
B X
C Y
C Z
A X
A Z
C Z
C Z
B Y
C Z
B Z
C Z
C Z
A Y
A Y
C Z
C Z
A Z
C Z
C Z
B X
C Y
C Z
C Z
C Z
C Z
A X
B Y
B X
B Z
C Z
A Z
A Z
B Z
A Z
B X
C Z
B Z
C Z
A Z
C Z
C Z
A Y
B Y
C Y
B X
A Z
C X
C Z
C X
B Y
B Z
C Z
C Z
C Z
C Y
C Z
A X
A X
A Y
C X
C X
A Y
B Y
C X
C Z
C Z
B X
B Z
B X
C X
B X
A Y
C Z
A Z
C Z
C Z
C Z
C Z
C X
A Z
B Y
C Z
C X
A Y
A Y
C Z
C Z
B Z
B X
C Z
A Z
B Y
C Z
C Z
B Y
A Y
C Z
B Z
B Z
A Z
C X
C Z
B Z
C Z
C Z
B Y
C X
B Y
A Z
C Z
A X
C Z
B Y
C Z
A Z
B Z
C Z
A Z
A Y
C Y
B X
C Z
A Y
C Y
A X
A Z
A Y
C X
C Z
C Z
B Z
A Z
C Z
C Z
C Y
C X
C Y
B Y
C Z
B Y
C Y
C Y
C Y
A X
C Z
C Z
B X
B Y
C Z
A Y
C Z
A Y
B Z
C Z
C Z
C Z
A Y
A X
B Z
B Y
A Y
A Y
B Y
B Z
C X
A Y
B Y
C X
C Z
C Z
B Y
C Z
C X
C Z
C X
C Z
A Y
A Y
B Y
C Z
A Z
C Y
C Z
A X
C Y
C Y
C Y
A Z
C X
C Z
C Z
A Z
C Z
B Y
C Y
C Z
C Z
C Z
B Z
C X
C Z
C Z
C X
C Z
C Z
C X
C Z
C X
B Z
B X
A X
C Z
A Y
C Z
B X
C Y
A X
C X
B Z
C Z
A Y
A X
C X
B Z
B Z
C X
A Y
C Y
A Y
C Z
C Y
A X
C Z
A Y
A Z
C Z
B Y
C X
A Y
A Y
C Y
B Y
A Z
B Y
C X
A Y
B Z
B Z
C Z
C Y
C Z
B Y
C X
C Z
C Z
A Y
C Z
C X
A Y
C Z
C Z
B X
C Z
A X
C Z
A Y
C Y
A Y
B X
C Y
C Y
A Y
C Z
A Z
C Z
C Y
C Z
A Z
A Z
C Z
C Z
C Z
C Z
C Z
A Y
A Z
B Y
C Z
A Y
C Y
C Z
A Y
C X
C Z
A Z
C Z
C Y
C X
C Z
C Y
A X
B Y
C Z
A Y
A Z
C X
C X
C Z
A Z
C Z
C Z
C Z
C Z
A X
C Z
C Z
C X
C Z
A Y
C Z
C Z
B X
B Y
C Y
B Z
C Y
C Z
B Y
A Y
A Y
B Y
A Z
B Z
B Y
A X
C Z
B X
A Y
C X
C Z
C X
C Z
C Z
C X
A Z
B Y
A X
C Z
C Z
B Z
C X
C X
B Z
A Y
A Y
A Y
A Z
C Y
C Z
A X
B Y
C Z
B Y
B Y
C Y
C Z
C Y
B Y
C Z
B Z
C X
C X
A X
C Z
C Z
B Z
A Y
A Z
B X
B Z
B Y
C Z
A Z
C X
A Z
B Y
C Z
B Y
A Y
C Z
A Y
B Z
C Z
A Z
B Z
B Y
B Y
A X
B Y
B Y
C Z
B Y
C Z
B Z
A Z
A Y
C Z
B Y
C Z
C Z
C X
C X
C Y
B Y
C Y
A Z
C Z
A Z
C Z
B Z
C Y
C Z
A X
B X
A Z
A Y
A Y
C Z
C Z
C Z
C Y
C Z
C Z
A Z
A X
B X
A Z
C Y
C Z
B Y
A Y
A Y
B X
B X
C Z
C Z
C Z
C X
C Z
C Y
C Z
A Y
C Z
C Z
C Y
A Z
B Y
A Y
B Y
B Y
A Y
A Y
B Z
C Z
C X
B Y
C Z
C Z
C X
A Z
B Y
A Z
C Z
C Z
B Y
C X
C Z
C Y
A Y
C Z
A Y
B Y
A Y
C X
C Y
C Y
B Y
B Z
A Z
C Z
C Y
B Z
B Y
A Y
A Z
A Y
A Y
B X
C Z
A X
B Y
B Y
C Z
B Y
B Y
B Z
C Z
A Y
C X
A X
A Y
C X
A Y
A Z
C Z
B Y
B Y
B Y
C Y
A Y
B Z
C Z
C Z
B Z
C Z
B X
C Y
B Y
A Z
C X
A Z
C Z
B X
C Z
C Z
B Z
C Z
A Z
A Z
B Y
C Z
A Z
C Y
B Y
B Z
C Z
C X
C Z
A Z
C Z
C Y
C X
A Y
B Y
B X
C X
C Z
A Z
C X
B Z
C Z
A Y
C Y
C Z
A Z
C Z
A Z
C Y
C X
C Y
B Z
B Y
A Z
A Y
B X
A Z
C X
C Y
C X
C Z
C X
A X
C Z
B Y
C Z
A Y
B Z
C X
B Y
C Z
A Z
C Z
C Z
C Y
A Y
A Z
A Y
C X
B Z
A Z
C Z
C Z
C Z
A X
C Z
A Z
A Y
C X
B X
C Z
C Z
A X
A Y
C Z
C X
C Z
A Z
C Y
C Z
B Z
C Y
C X
A Y
A X
A Z
C Z
C Z
C Z
C Z
A Y
C Z
A Z
A Y
C Z
B Z
B Y
C X
C Z
C X
C Z
B X
A Y
C Z
B Z
A Z
A Z
B Z
B Z
C Z
C Z
B Y
C Z
A Y
C X
A X
A X
C X
C X
B Y
B X
A Y
C Z
B X
B Y
A Z
B Z
A Z
A Z
C X
C Z
A X
A Y
C X
C Y
C Y
C X
A Z
C Z
C X
C X
A Y
A X
C Z
C Z
B Y
B Z
C X
C X
C Z
B Z
B Z
B Z
B Z
B Y
B X
C Z
C Z
C Z
C X
C Z
C Z
B Y
C Z
C X
B Y
C Z
C Y
B Z
C Y
C Z
C Z
C Z
C Z
C Z
C Z
C Z
A X
A Y
C Y
C Z
A Y
B X
C Z
B Y
C Y
C Z
C Z
C Z
C Y
C Z
A Z
B Y
A Z
C Z
B Z
C X
C X
A Z
C Z
C X
C Z
B Z
C Z
C Y
B X
C Z
A Z
C X
B Y
B Y
C Z
C Z
C Z
B Y
C Z
B Y
A Y
B Z
B Z
B Y
C Z
B Z
A X
C Z
C Z
C Z
B Y
B Y
C Z
C Y
C Z
B Y
C Z
B X
B Z
C X
B Y
C Y
B Y
C Z
A Y
B Z
C X
B Y
A Z
C Z
C X
A Z
B Z
A Y
C Z
C X
B Y
C Z
C Z
B Y
B Z
C X
C X
C Z
C Z
C X
B Z
A Y
C Z
C X
A Z
C Z
C Z
C Z
C Y
B Z
A X
B Z
B Z
C Z
C Z
B Z
C Z
B Z
A X
B Z
B Y
B Z
B Z
B Y
C X
A Y
B Y
B X
B X
A X
C Z
C Y
C Y
C Y
C Y
B Y
A X
C Y
A X
C Z
B Z
C Z
C Y
B Y
A Z
C Y
A Z
B Y
B X
C Z
A X
A Z
C Z
C Z
A X
C Z
C X
A Z
C Y
B Z
C Y
B Z
A Y
A Z
C Z
A Y
C Z
C Z
A X
C Z
C Z
C Z
B Y
C X
C Y
C Z
B X
A Z
C Z
C X
B Y
A Y
B Y
C Z
C Z
C Z
A Y
A X
C Z
C Z
C Z
C Z
B Y
A Z
C Z
A X
A Y
B Z"
  def input do
    @input
  end
end

defmodule Day02 do
  def shape_score(shape) do
    case shape do
      :rock -> 1
      :paper -> 2
      :scissors -> 3
    end
  end

  def match_score(result) do
    case result do
      :lose -> 0
      :draw -> 3
      :win -> 6
    end
  end

  def match_result(opponent, player) do
    case {opponent, player} do
      {:rock, :paper} -> :win
      {:scissors, :rock} -> :win
      {:paper, :scissors} -> :win
      {o, p} when o === p -> :draw
      _ -> :lose
    end
  end

  def str_to_shape(str) do
    case str do
      "A" -> :rock
      "X" -> :rock
      "B" -> :paper
      "Y" -> :paper
      "C" -> :scissors
      "Z" -> :scissors
    end
  end

  def score_for_round(opponent, player) do
    result = match_result(opponent, player)
    match_score(result) + shape_score(player)
  end

  def expected_result(str) do
    case str do
      "X" -> :lose
      "Y" -> :draw
      "Z" -> :win
    end
  end

  def needs_shape(opponent_shape, result) do
    case {opponent_shape, result} do
      {_, :draw} -> opponent_shape
      {:rock, :win} -> :paper
      {:rock, :lose} -> :scissors
      {:paper, :win} -> :scissors
      {:paper, :lose} -> :rock
      {:scissors, :win} -> :rock
      {:scissors, :lose} -> :paper
    end
  end

  def input do
    Input.input()
    |> String.split("\n")
    |> Enum.map(fn s -> String.trim(s) end)
    |> Enum.filter(fn line -> String.length(line) > 0 end)
    |> Enum.map(fn line -> String.split(line, " ") end)
  end

  def sum_scores(scores) do
    Enum.reduce(scores, 0, fn score, total ->
      score + total
    end)
  end

  def part1 do
    total_score =
      input()
      |> Enum.map(fn [opponent, player] -> [str_to_shape(opponent), str_to_shape(player)] end)
      |> Enum.map(fn [opponent, player] -> score_for_round(opponent, player) end)
      |> sum_scores

    IO.puts("Part 1")
    IO.puts(total_score)
  end

  def part2 do
    total_score =
      input()
      |> Enum.map(fn [opponent, result] ->
        opponent_shape = str_to_shape(opponent)
        [opponent_shape, needs_shape(opponent_shape, expected_result(result))]
      end)
      |> Enum.map(fn [opponent, player] -> score_for_round(opponent, player) end)
      |> sum_scores

    IO.puts("Part 2")
    IO.inspect(total_score)
  end
end

Day02.part1()
Day02.part2()