##Corre una línea a la vez
library(tidyverse)
library(estcomp)

# cargar datos del paquete estcomp
# puedes ver otros datos disponibles con data()
data(election_sub_2012)
# mostrar ayuda
?election_sub_2012
# ver una parte de los datos
glimpse(election_sub_2012)


# gráfica simple, experimenta con (aes) como 
# se explica en las notas
ggplot(election_sub_2012) +
  geom_point(aes(x = total, y = prd_pt_mc))

## aqui tus experimentos


#############################################################
### Ejercicio
p <- ggplot(election_sub_2012, aes(x = total, y = prd_pt_mc))

# experimenta con jitter, rellena size, height, width
# ¿cuáles parecen buenos valores?
p + geom_jitter(size = 0.5, height = , width = ) 


##############################################################
### Ejercicio: baja una gráfica como imagen y 
### guárdala en tu computadora.

##############################################################
### Ejercicio: para la siguiente gráfica, 
### Lee la ayuda de reorder y repite las gráficas anteriores ordenando por la mediana de prd_pt_mc.

ggplot(election_sub_2012, aes(x = reorder(state_abbr, prd_pt_mc), 
                              y = prd_pt_mc)) +
  geom_jitter(alpha = 0.6, size = 0.5) +
  geom_boxplot(outlier.color = NA) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Votos por casilla y estado", 
       subtitle = "PRD-PT-MC", x = "estado", y = "total de votos")



###############################################################
## Ejercicio: babynames. Arregla esta gráfica para que tenga sentido

library(dplyr)
library(babynames)
glimpse(babynames)

babynames_John <- filter(babynames, name == "John")
ggplot(babynames_John, aes(x = year, y = prop)) +
  geom_line()

