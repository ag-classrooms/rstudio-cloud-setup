if (!require(devtools)) {
    install.packages("devtools")
}

install.packages("tidyverse")
install.packages("janitor")
install.packages("patchwork")
install.packages("nullabor")

devtools::install_github("tereom/estcomp")
