defmodule Explorer.Admin.Ads do
  @moduledoc """
  Represents a user with administrative privileges.
  """

  use Explorer.Schema

  import Ecto.Changeset

  alias Explorer.Accounts.User


  schema "administrators_ads" do
    field(:title, :string)
    field(:link, :string)
    field(:type, :string)
    field(:status, :integer)
    belongs_to(:user, User)

    timestamps()
  end

  @required_attrs ~w(title link type status user_id)a

  @doc false
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_attrs)
    |> validate_required(@required_attrs)
    |> assoc_constraint(:user)
  end
end
