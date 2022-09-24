# People

This repo has come from going through the book Joy of elixir: https://joyofelixir.com/toc.html
Highly recommend as your first intro to elixir, then followed by the various tutorials that exist

## Elixir notes
Stuff that I thought worth remembering and noting, in no particular order:
Elixir: 
* You have a list (which is like arrays), then you have maps (%{}), and you have tuples ({..}), in elixir, maps are just a list of tuples
* `|>` can be thought of as "and then", this becomes the first arguement of the function it is being piped into
* Structs are maps that are named, and will always have the same set of keys, and an have default values
* to set up a new elixir project, create a `.tool-versions` file with erlang and elixir and in that directory run `mix new (nameOfProject)`, in that `newProjectFolder` iex will run and everything else, elixir and erlang are not globally instlled, so has to be like this in every folder every time. Ref on asdf: https://www.pluralsight.com/guides/installing-elixir-erlang-with-asdf
* mix can run tasks, `mix format` is a good one to use (it lints and formats), `mix test --trace` is to run tests with more visibility as to what is going on
* to add dependencies, add to the deps private function in `mix.ex`s and run `mix deps.get`
* the `conn` holds the params (while using cowboy), so you have to pattern match on params to get stuff passed into the request

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `people` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:people, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/people>.

