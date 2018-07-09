defmodule MPTest do
  use ExUnit.Case
  doctest MP

  test "greets the world" do
    assert MP.hello() == :world
  end
end
