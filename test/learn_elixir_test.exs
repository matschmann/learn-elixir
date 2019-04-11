defmodule LearnElixirTest do
  use ExUnit.Case
  doctest LearnElixir

  test "greets the world" do
    assert LearnElixir.hello() == :world
  end

  test "starter" do
    assert Starter.helloWorld()== "welt"
  end

  test "conaceting strings" do
    assert Starter.concatStrings()=="Hello World"
  end


end
