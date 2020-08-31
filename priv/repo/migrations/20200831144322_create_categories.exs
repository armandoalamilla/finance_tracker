defmodule FinanceTracker.Repo.Migrations.CreateCategories do
  @moduledoc """ Create table categories """
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :type, :string
    end
  end
end
