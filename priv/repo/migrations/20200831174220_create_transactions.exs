defmodule FinanceTracker.Repo.Migrations.CreateTransactions do
  @moduledoc """Crear la tabla de transacciones ademas de
  modificar categorias para meter fk y name"""
  use Ecto.Migration

  def change do

    #MODIFICAR TABLA DE CATEGORIAS 
    alter table(:categories) do
      add :user_id, references(:users)
      add :name, :string
    end

    #CREAR TABLA DE TRANSACCIONES
    create table(:transactions) do
      add :amount, :int
      add :description, :string
      add :trx_type, :string
      add :account_id, references(:accounts)
      add :category_id, references(:categories)
    end

    create index(:categories, [:user_id])
    create index(:transactions, [:account_id])
    create index(:transactions, [:category_id])

  end
end
