defmodule CascalhoScrumBoard.RegistrationController do
  use CascalhoScrumBoard.Web, :controller
  alias CascalhoScrumBoard.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, changeset: changeset
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)

    case CascalhoScrumBoard.Registration.create(changeset, CascalhoScrumBoard.Repo) do
      {:ok, changeset} ->
        # sign in the user
      {:error, changeset} ->
        # show error message
    end
  end
end
