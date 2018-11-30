defmodule ExJsonSchema.Validator.Error do
  defstruct [:error, :path]

  defmodule(Type, do: defstruct([:expected, :actual]))

  defmodule(AllOf, do: defstruct([:invalid]))

  defmodule(AnyOf, do: defstruct([:invalid]))

  defmodule(OneOf, do: defstruct([:valid_indices, :invalid]))

  defmodule(InvalidAtIndex, do: defstruct([:index, :errors]))

  defmodule(Not, do: defstruct([]))

  defmodule(AdditionalProperties, do: defstruct([]))

  defmodule(MinProperties, do: defstruct([:expected, :actual]))

  defmodule(MaxProperties, do: defstruct([:expected, :actual]))

  defmodule(Required, do: defstruct([:missing]))

  defmodule(Dependencies, do: defstruct([:property, :missing]))

  defmodule(AdditionalItems, do: defstruct([:additional_indices]))

  defmodule(MinItems, do: defstruct([:expected, :actual]))

  defmodule(MaxItems, do: defstruct([:expected, :actual]))

  defmodule(UniqueItems, do: defstruct([]))

  defmodule(Enum, do: defstruct([]))

  defmodule(Minimum, do: defstruct([:expected, :exclusive?]))

  defmodule(Maximum, do: defstruct([:expected, :exclusive?]))

  defmodule(MultipleOf, do: defstruct([:expected]))

  defmodule(MinLength, do: defstruct([:expected, :actual]))

  defmodule(MaxLength, do: defstruct([:expected, :actual]))

  defmodule(Pattern, do: defstruct([:expected]))

  defmodule(Format, do: defstruct([:expected]))
end