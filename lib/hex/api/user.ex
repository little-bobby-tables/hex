defmodule Hex.API.User do
  alias Hex.API

  def get(username) do
    API.request(:get, "users/#{username}")
  end

  def test(username, auth) do
    API.request(:get, "users/#{username}/test", auth)
  end

  def new(username, email, password) do
    API.erlang_post_request("users", %{username: username, email: email, password: password})
  end

  def password_reset(name) do
    API.erlang_post_request(:post, "users/#{name}/reset", %{})
  end
end
