defmodule Configger do
  defmacro config(app, key, do: val_block) do
    with val <- Configger.Parser.parse(val_block),
         :ok <- Application.put_env(app, key, val),
         ast <- (quote do unquote(val) end),
    do:  ast
  end
end
