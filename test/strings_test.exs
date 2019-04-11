defmodule StringsTest do
  use ExUnit.Case
  doctest LearnElixir

  test "conceting strings" do
    assert Starter.concatStrings() == "Hello World"
  end

end
