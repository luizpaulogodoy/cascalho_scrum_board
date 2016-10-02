defmodule CascalhoScrumBoard.Board do
  use CascalhoScrumBoard.Web, :model

  schema "boards" do
    field :name, :string
    belongs_to :team, CascalhoScrumBoard.Team

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
