defmodule CascalhoScrumBoard.PageController do
  use CascalhoScrumBoard.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
