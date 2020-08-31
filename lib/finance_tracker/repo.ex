defmodule FinanceTracker.Repo do
  use Ecto.Repo,
    otp_app: :finance_tracker,
    adapter: Ecto.Adapters.Postgres
end
