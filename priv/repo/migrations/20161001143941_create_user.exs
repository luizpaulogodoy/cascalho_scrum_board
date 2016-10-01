defmodule CascalhoScrumBoard.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :first_name, :string
      add :last_name, :string
      add :encrypted_password, :string
      add :bio, :string
      add :avatar_url, :string

      timestamps()
    end

  end
end
