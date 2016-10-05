defmodule CascalhoScrumBoard.SessionController do
  user CascalhoScrumBoard.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end
end
