defmodule FinanceTracker.Repo.Migrations.CreateUsers do
  use Ecto.Migration
  @moduledoc """ Create users table """

  def change do
    create table(:users) do
      add :email, :string
      add :password_hash, :string
    end
  end
end
