defmodule CascalhoScrumBoard.UserTest do
  use CascalhoScrumBoard.ModelCase

  alias CascalhoScrumBoard.User

  @valid_attrs %{bio: "some content", email: "tacionery@gmail.com", encrypted_password: "qwert123", first_name: "Tácio", last_name: "Nery"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
