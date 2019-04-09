defmodule LightweightWeb.PageController do
  use LightweightWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
