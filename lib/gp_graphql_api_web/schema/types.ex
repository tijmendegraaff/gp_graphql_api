defmodule GpGraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias GpGraphqlApiWeb.Schema.Types

  # import your types
  import_types(Types.UserType)
end
