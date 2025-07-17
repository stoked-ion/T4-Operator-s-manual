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


  //set heading(numbering: "1.1", )
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


= Sputtering SOP

//== Start up and Loading the Jig
+ Switch off loading bay vacuum pump
 #image("image.png")
+ Wait until the gauge reads 760 Torr
+ Load the Jig by lining up the holder with the hole for free movement of the arm
+ Close the loading bay lid
+ Switch on the vacuum pump
+ Wait until the gauge reads $~10^(-5)$ Torr
+ Open the interlock between the two chambers 
 #image("image-1.png")
+ Use the knob to rotate the plate inside
 #image("image-2.png")
+ Use the cylinder to position the plate inside the sputtering chamber.
 #image("image-3.png")
+ Use the joystick to push the plate up until it is caught by the revolving holder.
+ Once the plate is caught, move the arm out of the way.
+ Push the joystick down until the black mark is shown.
 #image("image-4.png")
+ Close the interlock between the two chambers
 
 #text(red)[*Sputtering settings here*]

+ Stop the spinning of the plate
+ Open the divider between the two chambers
+ Catch the plate with the arm and bring it bback to the loading position
+ Close the divider between the two chambers
+ Switch off the vacuum pump
+ Wait until the gauge reads 760 Torr
+ gjhgtjj