defmodule Roman do
  @moduledoc """
    Converts an arabic number to roman numeral        
  """

  @doc """
    Uppercase every other word in a sentence, Example:
    iex> Roman.to_roman(1)
    "I"
    iex> Roman.to_roman(4)
    "IV"
    iex> Roman.to_roman(5)
    "V"
    iex> Roman.to_roman(9)
    "IX"
    iex> Roman.to_roman(10)
    "X"
    iex> Roman.to_roman(40)
    "XL"
    iex> Roman.to_roman(50)
    "L"
    iex> Roman.to_roman(90)
    "XC"
    iex> Roman.to_roman(100)
    "C"
    iex> Roman.to_roman(400)
    "CD"
    iex> Roman.to_roman(500)
    "D"
    iex> Roman.to_roman(900)
    "CM"
    iex> Roman.to_roman(1000)
    "M"
    iex> Roman.to_roman(1999)
    "MCMXCIX"
  """

  def to_roman(number, roman_accumulator) when number >= 1000 do
    to_roman(number - 1000, roman_accumulator <> "M")
  end
  
  def to_roman(number, roman_accumulator) when number >= 900 do
    to_roman(number - 900, roman_accumulator <> "CM")
  end
  
  def to_roman(number, roman_accumulator) when number >= 500 do
    to_roman(number - 500, roman_accumulator <> "D")
  end
  
  def to_roman(number, roman_accumulator) when number >= 400 do
    to_roman(number - 400, roman_accumulator <> "CD")
  end
  
  def to_roman(number, roman_accumulator) when number >= 100 do
    to_roman(number - 100, roman_accumulator <> "C")
  end

  def to_roman(number, roman_accumulator) when number >= 90 do
    to_roman(number - 90, roman_accumulator <> "XC")
  end

  def to_roman(number, roman_accumulator) when number >= 50 do
    to_roman(number - 50, roman_accumulator <> "L")
  end

  def to_roman(number, roman_accumulator) when number >= 40 do
    to_roman(number - 40, roman_accumulator <> "XL")
  end

  def to_roman(number, roman_accumulator) when number >= 10 do
    to_roman(number - 10, roman_accumulator <> "X")
  end

  def to_roman(number, roman_accumulator) when number >= 9 do
    to_roman(number - 9, roman_accumulator <> "IX")
  end

  def to_roman(number, roman_accumulator) when number >= 5 do
    to_roman(number - 5, roman_accumulator <> "V")
  end

  def to_roman(number, roman_accumulator) when number == 4 do
    roman_accumulator <> "IV"
  end

  def to_roman(number, roman_accumulator) when number == 3 do
    roman_accumulator <> "III"
  end

  def to_roman(number, roman_accumulator) when number == 2 do
    roman_accumulator <> "II"
  end

  def to_roman(number, roman_accumulator) when number == 1 do
    roman_accumulator <> "I"
  end

  def to_roman(number, roman_accumulator) when number == 0 do
    roman_accumulator
  end

  def to_roman(number) do
    to_roman(number, "")
  end

end