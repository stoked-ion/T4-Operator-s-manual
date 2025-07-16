// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    margin: (left: 12mm, right: 12mm, top: 10mm, bottom: 10mm),
    numbering: "1",
    number-align: center,
  )
  set text(font: "Libertinus Serif", lang: "en", size: 14pt, spacing: 4pt)

  // Set paragraph spacing.


  set heading(numbering: "1.1", )
  set par(leading: 0.75em, justify: true)

  set text(hyphenate: false)
  show: columns.with(2, gutter: 2em)

  body
}


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "T4 Operating Manual",
  authors: (
    "",
  ),
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Start Up
+ Assumed status:
#set enum(numbering: "a)", indent: 10pt)
+ All vacuum pump vents *V3, V4, V6* dump tank vent *V1* and *Q* are #emph(text(green)[open]).
+ Manual valves *O, P, U, X, K, V9* are #emph(text(red)[closed]).
+ All solenoid valves *D, C, J, E, H, F, G, R3+R11* are #emph(text(red)[closed]).
+ *UBV Power* is #emph(text(green)[on]). and *UBV* is on *vacuum*.
#set enum(numbering: "1.", start: 2, indent: 0pt)
+ Check control panel. All switches to the left except *V1, G* & *UBV Power*.
+ Turn on control panel.
+ #emph(text(green)[Open]) *R3+R11*, open control panel gauges
+ Switch *UBV* to *Fill/Vent*
+ Start extraction fans and get oil. 
 [#emph(text(purple)[Fans may affect optics instability])]
+ Ensure tunnel is in #strong[loading position].
+ Open *X* & *U*, vent reservoir and CT.
+ Check CT & reservoir vacuum pump oil.
+ Start CT vacuum pump.
+ Close *V4*, close CT vent.
+ Start reservoir vacuum pump.
+ Close *V6*, close reservoir vent.
 #line(length: 100%)
+ Check wear rings, chevron seal and brakes.
+ Insert *soft* o-ring downstream, apply grease.
+ Insert *hard* o-ring upstream, apply grease.
#image("Piston.png", width: 90mm)