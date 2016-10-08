defmodule CascalhoScrumBoard.AddUserToTeamTest do
  use CascalhoScrumBoard.ModelCase

  alias Ecto.Changeset
  alias CascalhoScrumBoard.User
  alias CascalhoScrumBoard.Team

  test "add user to team" do
    user = %User{email: "taiconery@gmail.com", first_name: "Tacio", last_name: "Nery", password: "1234567890"}
            |> Repo.insert! |> Repo.preload(:teams)

    team = %Team{name: "Team One", slug: "teamone"} |> Repo.insert! |> Repo.preload(:users)

    changeset = Changeset.change(user) |> Changeset.put_assoc(:teams, [team])

    assert user.teams != nil
    assert team.users != nil
  end
end
