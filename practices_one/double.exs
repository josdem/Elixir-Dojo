double = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end

IO.puts apply.(double,6)

