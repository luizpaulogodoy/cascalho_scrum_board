defmodule CascalhoScrumBoard.Repo.Migrations.CreateTeam do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :name, :string
      add :slug, :string
      add :description, :string
      add :owner_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:teams, [:owner_id])

  end
end
