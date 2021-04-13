defmodule TESTTest do
  use ExUnit.Case
  doctest TEST

  test "greets the world" do
    assert TEST.hello() == :world
  end
end
