defmodule ExJsonSchema.Validator.Required do
  @moduledoc """
  `ExJsonSchema.Validator` implementation for `"required"` attributes.

  See:

  """

  alias ExJsonSchema.Schema.Root
  alias ExJsonSchema.Validator

  @behaviour ExJsonSchema.Validator

  @impl ExJsonSchema.Validator
  @spec validate(
          root :: Root.t(),
          schema :: ExJsonSchema.data(),
          property :: {String.t(), ExJsonSchema.data()},
          data :: ExJsonSchema.data()
        ) :: Validator.errors_with_list_paths()
  def validate(_, _, {"required", required}, data) do
    do_validate(required, data)
  end

  def validate(_, _, _, _) do
    []
  end

  defp do_validate(required, data = %{}) do
    required
    |> List.wrap()
    |> Enum.flat_map(fn property ->
      if Map.has_key?(data, property) do
        []
      else
        [{"Required property #{property} was not present.", []}]
      end
    end)
  end

  defp do_validate(_, _) do
    []
  end
end
