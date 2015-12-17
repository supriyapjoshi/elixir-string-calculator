defmodule StringCalc do
  def add(""), do: 0
  
  def add(val), do: split(val) |> _add
  

  defp split(val), do: String.split(val,["\n",","])
  defp _add([head | tail]), do: add_each(0, [head|tail])
  defp add_each(sum, []), do: sum
  defp add_each(sum,[head|tail]), do: add_each(_to_int(head) + sum, tail)
  defp _to_int(val) do
    {val, _} = Integer.parse(val)
    val
  end
end
