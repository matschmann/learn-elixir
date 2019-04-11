defmodule ModulesTest do
  use ExUnit.Case

  test "greets the world" do
    assert LearnElixir.hello() == :world
  end

  test "starter" do
    assert Starter.helloWorld() == "welt"
  end

end
