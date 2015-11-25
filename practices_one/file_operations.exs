defmodule FileOperations do

  def hadle_open = fn
    {:ok, file} ->
      "Read data: # {IO.read(file, :line)}"
    {_, error} ->
      "Error: # {:file.format_error(error)}"
  end

end

FileOperations.handle_open.(File.open("hello.txt"))
