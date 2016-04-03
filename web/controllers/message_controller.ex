defmodule Excouragement.MessageController do
  use Excouragement.Web, :controller

  def index(conn, params) do
    hello conn, params
  end

  def create(conn, params) do
    message conn, params
  end

  def message(conn, _params) do
    xml conn, Excouragement.MessageResponder.render
  end

  def hello(conn, _params) do
    render conn, "message.html"
  end

end
