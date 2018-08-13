defmodule GpGraphqlApiWeb.Resolvers.UserResolver do
    alias GpGraphqlApi.Accounts

    def patients(_,_,_) do
        {:ok, Accounts.list_users}
    end

    def create_patient(_, %{input: input}, _) do
        Accounts.create_user(input)
    end    
end