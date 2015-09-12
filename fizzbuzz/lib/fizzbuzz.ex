defmodule Fizzbuzz do

#  def fizzbuzz(x) when is_number(x) do
#    if rem(x,5) == 0 && rem(x,3) == 0 do
#      "FizzBuzz"
#      else if rem(x,3) == 0 do
#        "Fizz"
#        else if rem(x,5) == 0 do
#          "Buzz"
#          else
#            x
#          end
#        end
#      end
#    end

  def fizzbuzz(x) when is_number(x) do
    calculate_fizzbuzz(rem(x, 5), rem(x, 3), x)
  end

  defp calculate_fizzbuzz(0, 0, _), do: "Fizzbuzz"

  defp calculate_fizzbuzz(0, _, _), do: "Buzz"

  defp calculate_fizzbuzz(_, 0, _), do: "Fizz"

  defp calculate_fizzbuzz(_, _, x), do: x

end
