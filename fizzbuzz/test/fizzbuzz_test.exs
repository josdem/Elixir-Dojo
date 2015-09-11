defmodule FizzbuzzTest do
  use ExUnit.Case, async: true
  import Fizzbuzz


  test "When 1 then 1" do
    assert fizzbuzz(1) == 1
  end

  test "When 2 then 2" do
    assert fizzbuzz(2) == 2
  end

  test "When 3 then Fizz" do
    assert fizzbuzz(3) == "Fizz"
  end

  test "When 4 then 4" do
    assert fizzbuzz(4) == 4
  end

  test "When 5 then 5" do
    assert fizzbuzz(5) == "Buzz"
  end

  test "When 6 then 6" do
    assert fizzbuzz(6) == "Fizz"
  end

  test "When 7 then 7" do
    assert fizzbuzz(7) == 7
  end

  test "When 8 then 8" do
    assert fizzbuzz(8) == 8
  end

  test "When 9 then Fizz" do
    assert fizzbuzz(9) == "Fizz"
  end

  test "When 10 then Fuzz" do
    assert fizzbuzz(10) == "Buzz"
  end


end
