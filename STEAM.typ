#import "settings.typ": *

#set text(font: ("Times New Roman", "微軟正黑體"))

#show: metropolis-theme.with(
  aspect-ratio: "16-9",

  footer: self => self.info.institution,

  config-common(),


  config-info(
    title: [STEAM Motto Collections],
    subtitle: [The Wisdom Quotes I Appreciate],
    author: [岡崎夢美教授],
    date: [2025年3月14日],
    institution: [東雲研究所],
    logo: emoji.crystal,
  ),
)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

= #emoji.telescope Science #emoji.planet
#include "Science/Physics.typ"

= #emoji.computer Techology #emoji.computermouse
#include "Techology/Computation.typ"
#include "Techology/Programming.typ"


= #emoji.train Engineering #emoji.airplane

#include "Engineering/Modeling.typ"


= #emoji.cherries Art #emoji.lipstick

#include "Art/ACGN.typ"


= #emoji.church Math #emoji.books #emoji.bookmark

#include "Math/Probability.typ"

#include "Math/Algebra.typ"

#include "Math/General.typ"
