defmodule PhoenixTodo.Categories do
  import Ecto.Query, warn: false
  alias PhoenixTodo.Repo

  alias PhoenixTodo.Categories.Category

  def list_categories do
    Repo.all(Category)
  end

  def list_categories_for_select do
    Repo.all(from(c in Category, select: {c.name, c.id}))
  end

  def get_category!(id), do: Repo.get!(Category, id)

  def create_category(attrs \\ %{}) do
    %Category{}
    |> Category.changeset(attrs)
    |> Repo.insert()
  end

  def update_category(%Category{} = category, attrs) do
    category
    |> Category.changeset(attrs)
    |> Repo.update()
  end

  def delete_category(%Category{} = category) do
    Repo.delete(category)
  end

  def change_category(%Category{} = category, attrs \\ %{}) do
    Category.changeset(category, attrs)
  end
end
