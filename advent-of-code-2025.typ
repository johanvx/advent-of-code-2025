#set document(title: "Advent of Code 2025", author: "johanvx")

#set page(fill: rgb("#0f0f23"), margin: (x: 18mm))
#set text(fill: rgb("#cccccc"), font: ("Noto Sans Mono",), size: 11pt)
#set list(marker: [--], indent: 1.5em)

#show strong: set text(rgb("#ffffff"), weight: 500)
#show emph: set text(rgb("#ffff99"), style: "normal")
#show link: set text(rgb("#009900"))
#show heading.where(level: 1): block.with(inset: 0.5em)
#show raw: set text(size: 11pt)
#show raw.where(block: false): box.with(
  outset: 2pt,
  fill: rgb("#10101a"),
  stroke: 1pt + rgb("#333340"),
)
#show raw.where(block: true): block.with(
  outset: 2pt,
  fill: rgb("#10101a"),
  stroke: 1pt + rgb("#333340"),
)

#title()

#include "./01/main.typ"
#pagebreak(weak: true)
#include "./02/main.typ"
