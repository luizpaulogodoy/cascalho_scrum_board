defmodule CascalhoScrumBoard.Repo.Migrations.AlterUsersTeamsMakeInsertedAtUpdatedAtDefault do
  use Ecto.Migration

  def change do
    alter table(:users_teams) do
      modify :inserted_at, :datetime, default: fragment("NOW()")
      modify :updated_at, :datetime, default: fragment("NOW()")
    end
  end
end
