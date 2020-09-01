defmodule FinanceTracker.Finance.Transaction do
    use Ecto.Schema
    import Ecto.Changeset
    alias __MODULE__, as: Transaction
    alias FinanceTracker.Finance.Account
    alias FinanceTracker.Finance.Category

    schema "transactions" do
        field :amount, :integer
        field :description, :string
        field :trx_type, :string
        belongs_to :account, Account
        belongs_to :category, Category
    end

    @required [:amount, :description, :trx_type]
    @optional []

    def changeset(%Transaction{} = transaction, attrs \\ %{}) do
        transaction
        |> cast(attrs, @required ++ @optional)
        |> validate_required(@required)
        |> assoc_constraint(:account, :category)
    end
end