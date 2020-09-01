defmodule FinanceTracker.Auth.User do
    use Ecto.Schema
    import Ecto.Changeset
    alias __MODULE__, as: User
    alias FinanceTracker.Finance.Account
    alias FinanceTracker.Finance.Category
    alias FinanceTracker.Finance.Transaction

    schema "users" do
        field :email, :string
        field :password_hash, :string
        has_many :accounts, Account
        has_many :categories, Category
        has_many :transactions, Transaction
    end

    @required [:email, :password_hash]
    @optional []

    def changeset(%User{} = user, attrs \\ %{}) do
        user
        |> cast(attrs, @required ++ @optional)
        |> validate_required(@required)
        |> validate_format(:email, ~r/@/)
        |> unique_constraint(:email)
    end
end