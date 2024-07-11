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
    This is a focused slide.
]

#slide[
    = A new standard slide appeared.
]

#centered-slide[
	You can also *center* slides.
]

#slide[
    #side-by-side[
        #align(horizon)[
            - This slide seems to be unfinished.
            - ...
            - ...
        ]
    ][
        #figure(image("figures/OVGU-INF.svg", width: 100%), caption: [An example figure.])
    ]

    #todo()
]
