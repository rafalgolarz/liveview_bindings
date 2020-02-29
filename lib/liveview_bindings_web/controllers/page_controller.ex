defmodule LiveviewBindingsWeb.PageController do
  use LiveviewBindingsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
