defmodule PhoenixTodo.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixTodo.Tasks.Task

  schema "categories" do
    field :name, :string
    has_many :tasks, Task

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
