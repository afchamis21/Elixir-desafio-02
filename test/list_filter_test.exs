defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "return odd numbers" do
    assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    assert ListFilter.call(["1", "3", "5", "7", "banana", "6", "abc"]) == 4
  end
end
