defmodule FinanceTracker.Finance.Account do
    use Ecto.Schema
    import Ecto.Changeset
    alias __MODULE__, as: Account
    alias FinanceTracker.Auth.User

    schema "accounts" do
        field :name, :string
        belongs_to :user, User
    end

    @required [:name]
    @optional []

    def changeset(%Account{} = account, attrs \\ %{}) do
        account
        |> cast(attrs, @required ++ @optional)
        |> validate_required(@required)
        |> assoc_constraint(:user)
    end


end