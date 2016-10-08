defmodule CascalhoScrumBoard.User do
  use CascalhoScrumBoard.Web, :model

  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :encrypted_password, :string
    field :password, :string, virtual: true
    field :bio, :string
    field :avatar_url, :string

    # associations
    many_to_many :teams, CascalhoScrumBoard.Team, join_through: "users_teams"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :first_name, :last_name, :encrypted_password, :password, :bio, :avatar_url])
    |> validate_required([:email, :first_name, :last_name, :password])
    |> validate_length(:password, min: 5)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
