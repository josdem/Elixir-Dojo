defmodule ListOperations do
  def list_concat(first_list, second_list) do
    first_list ++ second_list
  end
end

IO.puts  ListOperations.list_concat([:a,:b], [:c,:d])

