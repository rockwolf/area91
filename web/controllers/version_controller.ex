defmodule Area91.VersionController do
  use Phoenix.Controller

  plug :action

  def version(conn, _params) do
    conn
    |> assign(:version, Area91.Repo.all(Area91.Version))
    |> render("version.html")
  end

end
