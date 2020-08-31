defmodule FinanceTracker.Repo.Migrations.AddUserIdToAccounts do
  @moduledoc """Añadir llave foranea a la tabla de user a las cuentas"""
  use Ecto.Migration

  def change do
    alter table(:accounts) do
      add :user_id, references(:users)
    end 

    create index(:accounts, [:user_id])
  end
end
