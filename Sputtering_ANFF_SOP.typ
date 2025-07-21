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
  title: "Sputtering SOP",
  authors: (
    "",
  ),
)


= Sputtering SOP

//== Start up and Loading the Jig

Before starting, ensure that: 
 - the gauges are properly loaded in the jig.
 - the power of GUN\#4 is supplying power to GUN\#3 (where the nickel is loaded).
  - _Note: This SOP is updated considering this setup._

== Loading
+ Switch off the loading bay vacuum pump.
 #figure(image("image.png", width: 4cm))
+ Wait until the gauge reads 760 Torr.
+ Open the loading bay lid.
+ Load the jig by lining up the holder with the hole for free movement of the arm.
 #figure(image("jig_loaded.png", width: 6cm))
+ Close the loading bay lid.
+ Switch on loading bay vacuum pump.
+ Wait until the gauge reads $~10^(-5)$ Torr.
+ Open the interlock between the two chambers.
+ Adjust the internal sample holder to receive the loading arm:
 - Set the switch to local.
 - Use the joystick to manually rotate and adjust the height. 
+ Carefully push the loading arm to insert the jig into the sample holder.
 - Ensure the top plate of the jig slides into the holder and seats properly in its lugs.
 - If needed, refine the orientation and height of the jig using the joystick.
 #image("engage_lugs.png")
+ Use the joystick to slowly raise the plate until it is caught by sample holder.
 - If the plate begins to tilt while raising, it indicates that only one of the lugs is engaged. In this case, lower the plate back into the loading arm and repeat the previous step.
+ Once the plate is caught, slowly rotate the sample holder to ensure that the jig's top plate is properly seated on both lugs.
+ Retract the loading arm.
+ Close the interlock to isolate the main chamber.

== Sputtering
+ Adjust the sputterer height to *40 mm* using the joystick.
 -  Red line aligned with the bottom.
 #figure(image("height.png", width: 4cm))
+ Switch the holder controller to remote mode.
+ Set the rotation to *20 rpm* with the knob.
+ Refer the software GUI below for the following steps:
 #figure(image("gui.png"))

+ Turn the *rotation on (A)*.
 - Check if the sample is rotating.
+ Set the Argon flow rate to *60 STPT (C)* and *turn it on (B)*.
+ Click in pressure and *set 30 mTorr (D)*.
+ The sputterer power is 150 W, but it needs to raise slowly:
 - Set 30 W (F) and turn it on (H).
 - _Check if the power is on. A pink light should be visible from the front window._
 - Set *120 s (G)* and then set *150 W (F)*.
  - _The ramp time should be set first!!_
+ Wait for the power indicator reads 150W.
+ Set the pressure to *3 mTorr (D)*.
+ Close both windows to protect them from nickel particles.
+ Prepare the timer, the sputtering time is manual.
 - Sputtering time: *10 min 30 sec*.
  - _Longer time, thicker nickel strip._
+ *Open the nickel shutter (E) and start the timer, simultaneously*.
+ 
+ *Close the shutter (E) when the time is up.*
 - _Pay attention, correct time is crucial._
+ Lower the power slowly:
 - Set *100 s (G)* and then set *50 W (F)*.
+ Wait for the power indicator reads 50W.
+ Turn off the power of GUN\#4.