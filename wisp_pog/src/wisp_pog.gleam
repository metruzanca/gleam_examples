import dot_env as dot
import dot_env/env
import gleam/io

// https://github.com/gleam-lang/packages
// https://hexdocs.pm/pog/index.html
// https://hexdocs.pm/wisp/index.html

pub fn main() -> Nil {
  dot.new()
  |> dot.set_path(".env")
  |> dot.set_debug(False)
  |> dot.load

  let url =
    env.get_string_or(
      "DATABASE_URL",
      "postgres://admin:passwordhere@localhost:5432/dev",
    )
  io.println(url)
}
