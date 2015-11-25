defmodule ListOperations do

  def list_concat(first_list, second_list) do
    first_list ++ second_list
  end

  def pair_tuple_to_list(tuple) do
    [elem(tuple,0), elem(tuple,1)]
  end

end

IO.inspect ListOperations.pair_tuple_to_list({1234,5678})
