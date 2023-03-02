defmodule BlockScoutWeb.Admin.AdsController do
  use BlockScoutWeb, :controller

  def index(conn, _) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    render(conn, "form.html", method: :create)
  end

end
