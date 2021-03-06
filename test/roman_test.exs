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

  test "nine is IX" do
    assert Roman.to_roman(9) == "IX"
  end

  test "ten is X" do
    assert Roman.to_roman(10) == "X"
  end

  test "eleven is XI" do
    assert Roman.to_roman(11) == "XI"
  end

  test "forteen is XIV" do
    assert Roman.to_roman(14) == "XIV"
  end

  test "sixteen is XVI" do
    assert Roman.to_roman(16) == "XVI"
  end

  test "thirty nine is XXXIX" do
    assert Roman.to_roman(39) == "XXXIX"
  end

end