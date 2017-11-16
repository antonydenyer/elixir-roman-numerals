defmodule Roman do
  
  def to_roman(number, roman_accumulator) do
    roman_accumulator <> String.duplicate("I", number)
  end
  
  def to_roman(number) when number >= 10 do
    to_roman(number - 10, "X")
  end

  def to_roman(number) when number >= 9 do
    to_roman(number - 9, "IX")
  end

  def to_roman(number) when number >= 5 do
    to_roman(number - 5, "V")
  end

  def to_roman(number) when number >= 4 do
    to_roman(number - 4, "IV")
  end

  def to_roman(number) do
    to_roman(number, "")
  end

end