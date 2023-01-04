defmodule FilteringInLists do
  def call(list_strings), do: filterList(list_strings)

  defp filterList(list_strings) do
    Enum.flat_map(list_strings, fn string ->
      # parse the string to integer
      case Integer.parse(string) do
        # if the string is a number
        {number, ""} ->
          # if the number is even
          parseFilter(rem(number, 2))
        # if the string is not a number
        _ ->
          []
      end
    end)
    # count the number of odd numbers
    |> Enum.count()
  end

  defp parseFilter(0),  do: []


  defp parseFilter(number), do: [number]

end
