defmodule Roman do
  def to_roman(number) when number == 5 do
    "V"
  def to_roman(number, roman_accumulator) do
    roman_accumulator <> to_roman(number)
  end
  
  def to_roman(number) when number >= 5 do
    to_roman(number - 5, "V")
  end

  def to_roman(number) when number == 4 do
    "IV"
  end

  def to_roman(number) do
    String.duplicate("I", number)
  end

end