defmodule Lightweight.Repo do
  use Ecto.Repo,
    otp_app: :lightweight,
    adapter: Ecto.Adapters.Postgres
end
