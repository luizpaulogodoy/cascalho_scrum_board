defmodule CascalhoScrumBoard.AddUserToTeamTest do
  use CascalhoScrumBoard.ModelCase

  alias Ecto.Changeset
  alias CascalhoScrumBoard.User
  alias CascalhoScrumBoard.Team

  test "add user to team" do
    user = Repo.insert!(%User{email: "taiconery@gmail.com", first_name: "Tacio", last_name: "Nery", password: "1234567890"})
    team = Repo.insert!(%Team{name: "Team One", slug: "teamone"})

    user
    |> Repo.preload(:teams)
    |> Changeset.change()
    |> Changeset.put_assoc(:teams, [team])
    |> Repo.update!

    assert user.teams != []
  end
end
