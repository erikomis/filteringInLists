defmodule FilteringInLists do

  def call(list_strings), do: filterList(list_strings)


  def filterList(list_strings) do
    Enum.flat_map(list_strings, fn  string ->
      case Integer.parse(string) do  #parse the string to integer
        {number, ""} -> #if the string is a number
          parseFilter(rem(number, 2)) #if the number is even
        _ -> #if the string is not a number
          []
      end
    end)
    |> Enum.count() #count the number of odd numbers
  end


  defp parseFilter(0) do
    []
  end
  
  defp parseFilter(number) do
    [number]
  end


end
