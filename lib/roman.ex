defmodule Roman do
  
  def to_roman(number, roman_accumulator) when number >= 10 do
    to_roman(number - 10, roman_accumulator <> "X")
  end

  def to_roman(number, roman_accumulator) when number >= 9 do
    to_roman(number - 9, roman_accumulator <> "IX")
  end

  def to_roman(number, roman_accumulator) when number >= 5 do
    to_roman(number - 5, roman_accumulator <> "V")
  end

  def to_roman(number, roman_accumulator) when number >= 4 do
    to_roman(number - 4, roman_accumulator <> "IV")
  end

  def to_roman(number, roman_accumulator) when number <= 3 do
    roman_accumulator <> String.duplicate("I", number)
  end

  def to_roman(number) do
    to_roman(number, "")
  end

end