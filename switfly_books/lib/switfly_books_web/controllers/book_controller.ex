defmodule SwitflyBooksWeb.BookController do
  use SwitflyBooksWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
