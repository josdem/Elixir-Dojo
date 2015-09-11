defmodule Fizzbuzz do

  def fizzbuzz(x) when is_number(x) do
    if rem(x,5) == 0 && rem(x,3) == 0 do
      "FizzBuzz"
      else if rem(x,3) == 0 do
        "Fizz"
        else if rem(x,5) == 0 do
          "Buzz"
          else
            x
          end
        end
      end
    end

end
