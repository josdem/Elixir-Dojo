list = [1,3,5,7,9]
double = fn n -> n * 2 end

IO.inspect Enum.map list, double
