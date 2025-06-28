import gleam/int
import gleam/float
import gleam/string

const currency_symbol = "£"

pub fn pence_to_pounds(pence: Int) {
  int.to_float(pence) /. 100.0
}

pub fn pounds_to_string(pounds) {
  // string.concat([
  //   "£",
  //   float.to_string(pounds),
  // ])

  // string.append(to: "£", suffix: float.to_string(pounds))

  // "£" <> float.to_string(pounds)

  currency_symbol
  |> string.append(float.to_string(pounds))
}
