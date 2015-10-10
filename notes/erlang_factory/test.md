## Pruebas con Elixir/Erlang

* ExUnit Overview

defmodule SimpleTest do
  use ExUnit.Case

  test "Sum" do
    assert 1 + 1 == 2
  end
end

use ExUnit.Case

* Hace disponible la clase test
* ExUnit.Callbacks define macros que se pueden utilizar para tareas de inicializacion y terminacion de pruebas

defmodule Setup do
{:ok, [name: "agus", age:36]}

test "I knoes hoe t greet", context do
  name = context[:name]
  assert SUT.greet(name) == "Hello #{name}"
end

test "it knows how to greet", %{name: name}

mix test test-/exunit/callbacks/setup_test.ex

defmodule OnExit do
  use ExitUnit.Case

  setup do
  context = %{name}


Tags nos permiten etiquetar pruebas los tags se  componen de un atomo y un valor.

mix test --only slow

Otro caso es para especificar timeout

@tag timeout: 200
  test "slow test" do
  :timer.sleep 500
  assert true


Otro caso es cuando quieres proveer ciertos hints.

@tag cd: "fixtures"
test "xxx" do
 {:ok, line } = File.read("hello.txt")
 assert line == "Hello there"
 end
end

Doctest

Elixir permite que los ejemplos de código que se utilizan en la documentación de una función, sean utilizandos tambien como pruebas.

@doc """
  Adds to numbers. Examples:

  FooCalculator.add(2,3)


def add(x,y) when is_number(x) and is_number(y) do
  x + y
end

Cobertura con ExCoverals

* Se agrega la dependencia
* test_coverage: [tool: ExCoverals]

Data Driven testing

Es la idea que tengas un solo codigo de prueba y tengas varios ejemplos

* Puedes agregarlos de Hojas de estilo, de base de datos o archivos de texto

defmodule DataDrivenTest do
  use ExUnit

data = [
 {1, 3, 4},
 {7, 4,11}m
]

for {{ab,c,}, idx} <- Enum.with_index(data) do

@a a
@b b
@c c
test "func #{idx}" do

assert SUT.sum(@a, @b) == @c
end
end
end

Imagina que quieras probasr si la funcion de Erlang es equivalente a otra de Elixir Específicamente si list.seq/2 es equivalente a Enum.to_llist/2

iex> :lists.seq 1,5
[1,2,3,4,5]

iex> Enum.to_list 1..5
[1,2,3,4,5]


La idea es que el programador, en lugar de especificar casos de prueba individuales, especifica propiedades (invariantes) que deben cumplirse sin importat los ejemplos particulares. Una herramienta toma la definicioon de estas propiedadses y genera un gran número de ejemplos trantado de encontrar uno para el que la propiedad no se cumpla.

Se llega a encontrar un ejemplo para el cual la propiedad no se cumple, trata de reducirlo a su minima expresion tal que siga sin cumplirse la popiedad y reporta este ultimo ejemplo al programador.


