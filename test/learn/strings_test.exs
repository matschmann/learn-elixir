defmodule StringsTest do
  use ExUnit.Case

  test "conceting strings" do
    assert Starter.concatStrings() == "Hello World"
  end

end
