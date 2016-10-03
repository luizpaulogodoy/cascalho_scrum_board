defmodule CascalhoScrumBoard.Repo.Migrations.CreateBoard do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :name, :string
      add :team_id, references(:teams, on_delete: :nothing)

      timestamps()
    end
    create index(:boards, [:team_id])

  end
end
