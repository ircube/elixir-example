defmodule E1Test do
  use ExUnit.Case
  doctest E1

  test "greets the world" do
    assert E1.hello() == :world
  end
end
