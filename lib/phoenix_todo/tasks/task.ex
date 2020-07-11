defmodule PhoenixTodo.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixTodo.Categories.Category

  schema "tasks" do
    field :name, :string
    belongs_to :category, Category

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
