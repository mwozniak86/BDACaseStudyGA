# Required R libraries (need to be installed - it can take a few minutes the first time you run the project)

# installs all necessary libraries from CRAN
get_libraries <- function(filenames_list) { 
  lapply(filenames_list,function(thelibrary){    
    if (do.call(require,list(thelibrary)) == FALSE) 
      do.call(install.packages,list(thelibrary)) 
    do.call(suppressPackageStartupMessages(library),list(thelibrary))
  })
}
libraries_used=c("dplyr","lattice","devtools","knitr","graphics",
                 "grDevices","xtable","Hmisc","vegan","fpc","GPArotation","slidify",
                 "FactoMineR","cluster","psych","stringr","googleVis", "png",
                 "ggplot2","googleVis", "gridExtra")
get_libraries(libraries_used)

if (do.call(require,list("RGoogleAnalytics")) == FALSE) 
  do.call(install_github,list("Tatvic/RGoogleAnalytics")) 
do.call(library,list("RGoogleAnalytics"))

# Determine document output format, return "html" by default
getDocumentOutputFormat <- function() {
  format <- opts_knit$get('rmarkdown.pandoc.to')
  if (!is.null(format)) format else "html"
}

iprint.df <- function(df, scale=FALSE) {
  if (getDocumentOutputFormat() == "html") {
    if (class(df) != "data.frame")
      df <- as.data.frame(df)
    x <- lapply(colnames(df), function(col) {
      if (is.numeric(df[, col]))
        color_bar(rgb(238, 238, 238, max=255), normalize.abs, min=0.1, na.rm=TRUE)
      else
        formatter("span")
    })
    names(x) <- colnames(df)
    tags$div(class="formattable_container", HTML(gsub("NA", "", format_table(df, x))))
  } else if (opts_knit$get('rmarkdown.pandoc.to') == "latex") {
    cat(ifelse(scale, "\\setkeys{Gin}{height=\\textheight}\\adjustbox{width=\\linewidth}{", "\\begin{center}"))
    cat(kable(df, format="latex", booktabs=TRUE, longtable=!scale))
    cat(ifelse(scale, "}\\setkeys{Gin}{height=\\maxheight}", "\\end{center}"))
  } else {
    kable(df)
  }
}