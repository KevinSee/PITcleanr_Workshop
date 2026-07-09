# Author: Kevin See
# Purpose: turn html presentation into PDF
# Created: 1/10/2024
# Last Modified: 4/30/25
# Notes:

#-----------------------------------------------------------------
library(here)

# what file to render?
# file_nm = "PITcleanr_Presentation"
file_nm = "PITcleanr_Presentation_PNAMP"


#-----------------------------------------------------------------
# load needed libraries
library(pagedown)

chrome_print(input = here("presentation",
                          paste0(file_nm, ".html")),
             format = "pdf")

#-----------------------------------------------------------------
# try a different package
library(renderthis)
# renderthis package no longer supported by CRAN, but is available on GitHub
# https://github.com/jhelvy/renderthis

# render presentation into PDF
to_pdf(from = here("presentation",
                   paste0(file_nm, ".html")),
       to = here("presentation",
                 paste0(file_nm, ".pdf")),
       complex_slides = T,
       partial_slides = T)

# render presentation into powerpoint
to_pptx(from = here("presentation",
                    paste0(file_nm, ".html")),
        to = here("presentation",
                  paste0(file_nm, ".pptx")),
        density = 300,
        complex_slides = T,
        partial_slides = T,
        delay = F,
        ratio = "16:9")

