defmodule FreshcomWeb.UserView do
  use FreshcomWeb, :view
  use JaSerializer.PhoenixView

  attributes [
    :status,
    :email,
    :username,
    :first_name,
    :last_name,
    :name,
    :role,
    :email_verified
  ]

  def type do
    "User"
  end
end
