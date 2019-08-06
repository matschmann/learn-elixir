defmodule EnumsTest do
  use ExUnit.Case

  test "all elements of a list are longer than 2" do
    list = ["foo", "bar", "foobar"]
    assert Enum.all?(list, fn (s) -> String.length(s) > 2 end) == true
  end

  test "chunk into sublists by position" do
    list = [1, 2, 3, 4, 5, 6, 7]
    assert Enum.chunk_every(list, 2) == [[1, 2], [3, 4], [5, 6], [7]]
  end

  test "group by word length" do
    list = ["one", "two", "three", "four", "five"]
    chunked = Enum.chunk_by(list, fn (s) -> String.length(s) end)
    sorted = Enum.sort(chunked, fn (x, y) -> length(x) >= length(y) end)

    assert sorted == [["one", "two"], ["four", "five"], ["three"]]
  end

  test "filter odd numbers" do
    filtered = Enum.filter([1, 2, 3, 4, 5], fn (x) -> rem(x, 2) == 0 end)
    assert  filtered == [2, 4]
  end

  test "Sum up list" do
    assert Enum.reduce([1, 2, 3, 4, 5], fn (x, acc) -> x + acc end) == 15
  end

  test "remove duplicates from list" do
    list = [2,3,2,2,1,1,2,3,1,2,1,2,1,2,2,3]
    assert Enum.uniq_by(list, fn x -> x end) == [2,3,1]
  end

end
