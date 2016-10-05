defmodule CascalhoScrumBoard.RegistrationController do
  use CascalhoScrumBoard.Web, :controller
  alias CascalhoScrumBoard.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, changeset: changeset
  end
end
