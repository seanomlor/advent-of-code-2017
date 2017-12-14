defmodule Memory1Test do
  use ExUnit.Case, async: true

  test "repair [0 2 7 0] returns 5" do
    assert Memory1.repair([0, 2, 7, 0]) == 5
  end

  test "repair memory1.txt returns ???" do
    banks =
      [File.cwd!, "files", "memory1.txt"]
      |> Path.join
      |> File.read!
      |> String.split
      |> Enum.map(&String.to_integer/1)

    assert Memory1.repair(banks) ==  7864
  end
end