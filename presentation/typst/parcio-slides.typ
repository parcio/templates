#import "@preview/polylux:0.3.1": *

#let ovgu-footer = state("ovgu-footer", [])

#let parcio-slides-theme(
  aspect-ratio: "16-9",
  footer: [],
  background: white,
  foreground: black,
  body
) = {
  set page(
    paper: "presentation-" + aspect-ratio,
    margin: 2em,
    header: none,
    footer: none,
    fill: background,
  )
  set text(fill: foreground, size: 20pt)
  show footnote.entry: set text(size: .6em)
  show heading.where(level: 2): set block(below: 2em)
  set outline(target: heading.where(level: 1), title: none, fill: none)
  show outline.entry: it => it.body
  show outline: it => block(inset: (x: 1em), it)

  ovgu-footer.update(footer)

  body
}

#let centered-slide(body) = {
  logic.polylux-slide(align(center + horizon, body))
}

#let title-slide(
     title: [],
     subtitle: none,
     author: none,
     authormails: none,
     date: none,
     extra: none,
     logos: none,
) = {
  let content = {
    block(width: 100%, inset: 1em, {
    grid(
        columns: (6fr, 4fr),
        align(left)[
                #text(size: 1.6em, strong(title))
                #if subtitle != none {
                    v(0em)
                    text(size: 1.1em, subtitle)
                }
                #set text(size: 1em)
                #if date != none {
                    block(spacing: 1em, date)
                }

            ],
        align(right)[
                #if logos != none {
                    image(logos, width: 100%)
                }
        ]
    )

    line(length: 100%, stroke: .05em)
    set text(size: 1em)
    if author != none {
       block(spacing: 1em, author)
    }
    set text(size: .7em, weight: "light")
    if authormails != none {
       block(spacing: 1em, raw(authormails))
    }
    if extra != none {
       v(1em)
       block(spacing: 1em, extra)
    }
    })
  }
  logic.polylux-slide(content)
}

#let focus-slide(background: aqua.darken(50%), foreground: white, body) = {
  set page(fill: background)
  set text(fill: foreground, size: 1.5em)
  logic.polylux-slide(align(center + horizon, body))
}

#let slide(body) = {
  let deco-format(it) = text(size: .6em, fill: gray, it)
  set page(
    header: locate( loc => {
      let sections = query(heading.where(level: 1, outlined: true).before(loc), loc)
      if sections == () [] else { deco-format(sections.last().body) }
    }),
    footer: deco-format({
      ovgu-footer.display(); h(1fr); logic.logical-slide.display(); "/"; utils.last-slide-number
    }),
    footer-descent: 1em,
    header-ascent: 1em,
  )
  logic.polylux-slide(body)
}

#let todo(txt: [TODO TODO]) = {
  place(center + horizon, rotate(-35deg, text(size: 96pt, fill: luma(0, 30%), txt)))
}
