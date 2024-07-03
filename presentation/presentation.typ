#import "@preview/polylux:0.3.1": *

#import "parcio-slides.typ": *

#show: parcio-slides-theme.with(footer: "Short Title of Presentation")

#set text(font: "Libertinus Sans")

#title-slide(
    title: "Example Slides",
    subtitle: "Example Subtitle.",
    author: "Xenia Linux",
    authormails: "xenia@linux.org",
    date: datetime.today().display(),
    logos: "figures/OVGU-INF.svg",
    extra: [
        Parallel Computing and I/O \
        Institute for Intelligent Cooperating Systems \
        Faculty of Computer Science \
        Otto von Guericke University Magdeburg \
        `https://parcio.ovgu.de`
    ]
)

#focus-slide[
    This is a local only slide test.
]

#slide[
    = A new slide appeared.
]

#centered-slide[
	You can also *center* slides.
]
