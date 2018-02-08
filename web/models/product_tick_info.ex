defmodule Area91.ProductTickInfo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:product_tick_info_id, :integer, []}
  @derive {Phoenix.Param, key: :product_tick_info_id}
  schema "t_product_tick_info" do
    field :description, :string
    field :tick, :decimal
    field :tick_value, :decimal
    field :order_min, :decimal
    field :order_max, :decimal
    field :margin_day_proc, :decimal
    field :margin_night_proc, :decimal
    field :is_deleted, :boolean, default: :false 
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(description tick tick_value order_min order_max margin_day_proc margin_night_proc is_deleted date_created date_modified)
  @required ~w(description tick tick_value order_min order_max margin_day_proc margin_night_proc is_deleted date_created date_modified)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
