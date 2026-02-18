n = IO.gets("Введите число: ") |> String.trim() |> String.to_integer()

defmodule Cipocka do
  def generate(n) do
    if n < 2 do
      IO.puts(
        "Слова не может содержать меньше двух символов, так-как что бы попасть в x нам нужно обязательно b и с короче минимальное слово bc. Дурак >/////< "
      )
    end

    if n == 2 do
      IO.puts("bc")
    end

    if n >= 2 do
      a = n - 2
      b = Enum.random(0..a)
      c = a - b
      IO.inspect(a: a, b: b, c: c, n: n)

      if b > 0 do
        for _ <- 0..(b - 1) do
          IO.write(Enum.random(["a", "b"]))
        end
      end

      if b <= 0 do
      end

      IO.write("b")

      if c > 0 do
        for _ <- 0..(c - 1) do
          IO.write(Enum.random(["c", "d"]))
        end
      end

      if c <= 0 do
      end

      IO.write("c")
    end
  end
end

Cipocka.generate(n)
