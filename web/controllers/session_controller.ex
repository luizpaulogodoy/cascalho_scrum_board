defmodule CascalhoScrumBoard.SessionController do
  use CascalhoScrumBoard.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end
end
