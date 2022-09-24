defmodule People.Person do
  defstruct first_name: nil,
            last_name: nil,
            birthday: nil,
            location: "home"

  def full_name(%Person{first_name: first_name, last_name: last_name} = person) do
    "#{first_name} #{last_name}"
  end

  def age(%Person{birthday: birthday} = person) do
    days = Date.diff(Date.utc_today(), birthday)
    days / 365.25
  end

  def toggle_location(%Person{location: "away"} = person) do
    person |> set_location("home")
  end

  def toggle_location(%Person{location: "home"} = person) do
    person |> set_location("away")
  end

  defp set_location(%Person{} = person, location) do
    %{person | location: location}
  end

  defimpl Inspect do
    def inspect(
          %Person{
            first_name: first_name,
            last_name: last_name,
            location: location
          },
          _
        ) do
      "Person[#{first_name} #{last_name}, #{location}]"
    end
  end
end
