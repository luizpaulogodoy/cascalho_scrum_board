defmodule CascalhoScrumBoard.Team do
  use CascalhoScrumBoard.Web, :model

  schema "teams" do
    field :name, :string
    field :slug, :string
    field :description, :string

    # associations
    belongs_to :owner, CascalhoScrumBoard.Owner
    many_to_many :users, CascalhoScrumBoard.Team, join_through: "users_teams"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :description])
    |> validate_required([:name, :slug])
  end
end
