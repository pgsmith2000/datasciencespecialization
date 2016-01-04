---
title: "Quiz"
author: "Paul G. Smith"
date: "January 4, 2016"
output: html_document
---

## Week 1 Quiz
------------

10 questions

1. Which of the following is a principle of analytic graphics?

+ Don't plot more than two variables at at time
+ Show causality, mechanism, explanation
+ Only do what your tools allow you to do
+ Show box plots (univariate summaries)
+ Make judicious use of color in your scatterplots

2. What is the role of exploratory graphs in data analysis?

- The goal is for personal understanding.
- They are used in place of formal modeling.
- Only a few are constructed.
- Axes, legends, and other details are clean and exactly detailed.

3. Which of the following is true about the base plotting system?

- Plots are typically created with a single function call
- The system is most useful for conditioning plots
- Margins and spacings are adjusted automatically depending on the type of plot and the data
- Plots are created and annotated with separate functions

4. Which of the following is an example of a valid graphics device in R?

- A PDF file
- A socket connection
- A file folder
- The keyboard

5. Which of the following is an example of a vector graphics device in R?

- TIFF
- PNG
- Postscript
- GIF
- JPEG

6. Bitmapped file formats can be most useful for

- Scatterplots with many many points
- Plots that require animation or interactivity
- Plots that may need to be resized
- Plots that are not scaled to a specific resolution

7. Which of the following functions is typically used to add elements to a plot in the base graphics system?

- plot()
- points()
- boxplot()
- hist()

8. Which function opens the screen graphics device on Windows?

- postscript()
- xfig()
- jpeg()
- windows()

9. What does the 'pch' option to par() control?

- the plotting symbol/character in the base graphics system
- the size of the plotting symbol in a scatterplot
- the line width in the base graphics system
- the orientation of the axis labels on the plot

10. If I want to save a plot to a PDF file, which of the following is a correct way of doing that?

- Construct the plot on the screen device and then copy it to a PDF file with dev.copy2pdf()
- Open the PostScript device with postscript(), construct the plot, then close the device with dev.off().
- Open the screen device with quartz(), construct the plot, and then close the device with dev.off().
- Construct the plot on the PNG device with png(), then copy it to a PDF with dev.copy2pdf().
