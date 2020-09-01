defmodule FinanceTracker.Finance.Category do
    use Ecto.Schema
    import Ecto.Changeset
    alias __MODULE__, as: Category
    alias FinanceTracker.Auth.User

    schema "categories" do
        field :type, :string
        field :name, :string
        belongs_to :user, User
    end

    @required[:name]
    @optional[:type]

    def changeset(%Category{} = category, attrs \\ %{}) do
        category
        |> cast(attrs, @required ++ @optional)
        |> validate_required(@required)
        |> assoc_constraint(:user)
    end
end
