defmodule GpGraphqlApiWeb.Schema do
  use Absinthe.Schema

  alias GpGraphqlApiWeb.Resolvers

  import_types(GpGraphqlApiWeb.Schema.Types)

  query do
    @desc "Get all patients"
    field :patients, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.patients/3)
    end
  end

  mutation do
    @desc "Register a patient"
    field :create_patient, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.create_patient/3)
    end
  end
end
