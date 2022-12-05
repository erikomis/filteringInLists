defmodule FilteringInLists do

  def call(list_strings), do: filterList(list_strings)


  def filterList(list_strings) do
    Enum.flat_map(list_strings, fn  string ->
      case Integer.parse(string) do  #parse the string to integer
        {number, ""} -> #if the string is a number
          if rem(number, 2) == 0 do #if the number is even
            []
          else
            [number] #if the number is odd
          end
        _ -> #if the string is not a number
          []
      end
    end)
    |> Enum.count() #count the number of odd numbers
  end

end
