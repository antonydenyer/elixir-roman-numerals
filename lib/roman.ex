defmodule Roman do

  def to_roman(number) when number == 4 do
    "IV"
  end
  def to_roman(number) do
    String.duplicate("I", number) 
  end

end