defmodule CascalhoScrumBoard.UsersTeamsTest do
  use CascalhoScrumBoard.ModelCase

  alias CascalhoScrumBoard.UsersTeams

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UsersTeams.changeset(%UsersTeams{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UsersTeams.changeset(%UsersTeams{}, @invalid_attrs)
    refute changeset.valid?
  end
end
