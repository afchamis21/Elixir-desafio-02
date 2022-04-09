defmodule ListFilter do
  def call(list), do: transform_int(list)

  defp transform_int(list) do
    filtered_list =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _} -> [int]
          :error -> []
        end
      end)

    count_odds(filtered_list, 0)
  end

  defp count_odds([], acc) do
    acc
  end

  defp count_odds([head | tail], acc) do
    if rem(head, 2) == 1 do
      count_odds(tail, acc + 1)
    else
      count_odds(tail, acc)
    end
  end
end
