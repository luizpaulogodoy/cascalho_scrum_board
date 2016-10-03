defmodule CascalhoScrumBoard.Card do
  use CascalhoScrumBoard.Web, :model

  schema "cards" do
    field :title, :string
    field :description, :string
    belongs_to :board, CascalhoScrumBoard.Board

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end
end
