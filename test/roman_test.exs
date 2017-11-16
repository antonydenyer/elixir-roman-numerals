defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

      
  test "one is I" do
    assert Roman.to_roman(1) == "I"
  end

  test "two is II" do
    assert Roman.to_roman(2) == "II"
  end

  test "four is IV" do
    assert Roman.to_roman(4) == "IV"
  end

  test "five is V" do
    assert Roman.to_roman(5) == "V"
  end

  test "six is VI" do
    assert Roman.to_roman(6) == "VI"
  end

end