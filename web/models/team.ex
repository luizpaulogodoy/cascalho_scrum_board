defmodule CascalhoScrumBoard.Team do
  use CascalhoScrumBoard.Web, :model

  schema "teams" do
    field :name, :string
    field :slug, :string
    field :description, :string
    belongs_to :owner, CascalhoScrumBoard.Owner

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :description])
    |> validate_required([:name, :slug, :description])
  end
end
