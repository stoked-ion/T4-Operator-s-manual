// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    margin: (left: 10mm, right: 10mm, top: 8mm, bottom: 8mm),
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

 - The power of GUN\#4 is supplying power to GUN\#3 (where the nickel is loaded). #text(fill: red)[(Temporary step)
  //- _Note: This SOP considers this setup_.
  //- Last update: 18 JUL 2025.
]

== Loading
+ Switch off the loading bay vacuum pump.
 #figure(image("image.png", width: 3.5cm))
+ Wait until the gauge reads 760 Torr.
+ Open the loading bay.
+ Load the jig by lining up the holder with the hole for free movement of the arm.
 #figure(image("jig_loaded.png", width: auto))
+ Close the loading bay.
+ Switch on loading bay vacuum pump.
+ Wait until the gauge reads $~10^(-5)$ Torr.
+ Open the interlock between  chambers.
+ Adjust the internal sample holder to receive the loading arm:
 - Set the switch to local.
 - Use the joystick to manually rotate and adjust the height. 
+ Carefully push the loading arm to insert the jig into the sample holder.
 - Ensure the top plate of the jig slides into the holder and seats properly in its lugs.
 - If needed, refine the orientation and height of the jig using the joystick.
 #figure(image("engage_lugs.png", width: auto))
+ Use the joystick to slowly raise the plate until it is caught by sample holder.
 -  _If the plate begins to tilt while raising, it indicates that only one of the lugs is engaged. In this case, lower the plate back into the loading arm and repeat the previous step._
+ Once the plate is caught, slowly rotate the sample holder to ensure that the jig's top plate is properly seated on both lugs.
+ Retract the loading arm.
+ Close the interlock to isolate the main chamber.

== Sputtering
+ Adjust the sputterer height to *40 mm* using the joystick.
 -  Red line aligned with the bottom.
 #figure(image("height.png", width: 3.9cm))
+ Switch the controller to remote mode.
+ Set the rotation to *20 rpm* with the knob.
+ Refer the GUI field labels below for the following steps:
 #figure(image("gui.png"))

+ Turn the *rotation on* (field A).
 - Check if the sample is rotating.
+ Set the Argon flow rate to *60 STPT* and *turn it on* (field B).
+ Click in "PRESSURE" and *set 30 mTorr* (field D).
+ The sputterer power is 150 W, but it needs to rise slowly. In the field E:
 - Set 30 W and turn it on.
  - _Check if the power is on. (The Plasma should glow through the window)_
 - Set *120 s* and then set *150 W*.
  - _The ramp time should be set first!_
+ Wait until the power reaches 150 W.
+ Set the pressure to *3 mTorr* (field C).
+ Close both windows to shield the glass.
+ Prepare the timer.
 - The sputtering time is manual.
 - Sputtering time: *10 min 30 sec*.
  //- _Longer time, thicker nickel strip._
+ *Open the nickel shutter* (click the "OPEN" button in field D) and *start the timer simultaneously*.
+ Wait for the sputtering time.
 - _Pay attention, correct time is crucial._
+ *Close the shutter* when the time is up (field D).
+ Lower the power slowly:
 - Set *100 s* and then set *50 W* (field E).
+ Wait until the power reaches 50 W.
+ Turn off the power (field E).
+ Open the pressure control (field C).
+ Turn off the gas (field B).
+ Turn off the rotation (field A).
+ Open the windows to start the unloading procedure.

== Unloading
+ Open the interlock gate.
+ Adjust the internal sample holder to receive the loading arm:
 - Set the switch to local.
 - Use the joystick to manually rotate and adjust the height.
+ Slowly bring the loading arm into the chamber.
 - The holder should slide below the jig.
+ Carefully lower the jig with the joystick.
 - Rotate it for fine adjustment if needed.
+ Further lower the sample holder until the jig is properly seated in the holder and disengaged from the lugs.
 - If the jig doesn't disengage, or if it seems to be tilting, small movements may be necessary (height or rotation).
+ Once the jig is fully supported by the holder, retract the loading arm.
+ Close the interlock gate.
+ Switch off the loading bay vacuum pump.
+ Remove the jig.
+ Close the loading bay and switch on the vacuum pump.