defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

      
  test "one is I" do
    assert Roman.to_roman(1) == "I"
  end

  test "two is II" do
    assert Roman.to_roman(2) == "II"
  end


end