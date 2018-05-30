################################################################################
################################################################################
## Title: fancyBox
## Author: Steve Lane
## Date: Saturday, 08 July 2017
## Synopsis: Hook function to make images popup with fancyBox in rmarkdown.
## Time-stamp: <2018-05-31 07:47:08 (slane)>
################################################################################
################################################################################
## Depends on knitr/rmarkdown of course...
fancyBox <- function(x, options){
    if(options$popup){
        fname <- knitr:::.upload.url(x)
        before <- paste0('<a href="', fname, '" data-fancybox>')
        after <- "</a>"
    } else {
        before <- ""
        after <- ""
    }
    paste0(before, knitr:::hook_plot_md_base(x, options), after)
}
knitr::knit_hooks$set(plot = fancyBox)
################################################################################
################################################################################
