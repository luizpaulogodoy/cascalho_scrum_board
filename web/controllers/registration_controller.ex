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
        conn
        |> put_flash(:info, "Your account has been created.")
        |> redirect(to: "/")
      {:error, changeset} ->
        conn
        |> put_flash(:info, "Unable to create account.")
        |> render("new.html", changeset: changeset)
    end
  end
end
