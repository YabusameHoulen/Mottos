#import "@preview/numbly:0.1.0": numbly
#import "theme.typ": *


#let quoteblock(attribution, inset: 20pt, outset: 10pt, body) = rect(
  fill: luma(95%),
  stroke: 0.5pt,
  inset: inset,
  outset: outset,
  width: 100%,
  {
    set quote(block: true)
    quote(attribution: attribution)[
      #set align(horizon)
      #body
    ]
  },
)