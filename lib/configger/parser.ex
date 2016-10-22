defmodule Configger.Parser do
  def parse({:::, _, [default, guards]}) do
    default :: guards
  end

  defp unquote(:::)(default, guards) do
    {default, guards}
  end
end
