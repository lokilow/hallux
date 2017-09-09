defmodule Hallux.Digits.One do
  @enforce_keys [:a]
  defstruct [:a]

  defimpl Enumerable do
    alias Hallux.Digits.One
    def count(_one), do: {:ok, 1}

    def member?(%One{a: a}, elem), do: {:ok, a === elem}

    def reduce(%One{a: a}, cmd, fun),
      do: Enumerable.reduce([a], cmd, fun)
  end
end
