defmodule FileOperations do
  def handle_open({:ok, file}) do
    "Read data: #{IO.read(file, :line)}"
  end
  def handle_open({_, error}) do
    "Error: #{:file.format_error(error)}"
  end
end

IO.puts FileOperations.handle_open(File.open("hello.txt"))
IO.puts FileOperations.handle_open(File.open("not_exist.txt"))
