library(tidyverse)
library(ggplot2)
library(palmerpenguins)
#tarea_03


# ejercicios "first steps" --------------------------------------------------------------

#ejercicio 1
glimpse(penguins)
#penguins has 344 rows and 8 columns

#ejercicio 2
help("penguins")
#bill_depth_mm describe la profundidad del pico en milimetros
#ejercicio 3
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point() 
#a simple vista no se ve una correlación clara entre variables.

#ejercicio 4
ggplot(penguins, aes(x = species, y = bill_depth_mm)) +
  geom_point()
#se ve raro
#quiza es mejor un boxplot

ggplot(penguins, aes(x = species, y = bill_depth_mm)) +
  geom_boxplot()
#ejercicio 5
ggplot(data = penguins) +
  geom_point()
#esto da error porque geom_point necesita los ejes x e y, cosa que no se asignó

#ejercicio 6
#na.rm lo que hace es eliminar los valores faltantes
#en el valor por defecto na.rm = False , elimina los faltantes con warning, mientras que con true no usa warning

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(na.rm = TRUE)

#ejercicio 7
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(na.rm = TRUE) +
  labs(caption = "Data come from the palmerpenguins package.") #usamos labs
#ejercicio  8
library(tidyverse)
library(palmerpenguins)

ggplot(
  data = penguins,
  aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = bill_depth_mm)) +
  geom_smooth()
#ejrcicio 9
#tendria que mostrar un scatterplot con fkipper length en el eje x ybody mass en el y
#tendria que tener una curva para cada tipo de isla

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)
#bastante similar

#ejercicio 10

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )
#se ven iguales. en el primero, el mapeo está definido a nivel global en ggplot(). 
#en el segundo, el mismo mapeo se repite a nivel local en cada geom.
#como el mapeo es el mismo el resultado tambien


# ejercicios visualizaing distributions -----------------------------------

#ejercicio 1
ggplot(penguins, aes(y = species)) +
  geom_bar()
#las barras quedan horizontales en vez de verticales
#ejercicio 2
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")
#la diferencia es que color pinta el borde y fill el interior de las barras
#ejercicio 3
#bins fija la cantidad de intervalos o "secciones del histograma
#binwidth fija el ancho de cada intervalo

#ejercicio 4
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.01)
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.10)
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 1)
#pienso que el de 0.10 es el mas util, ya que muestra los patrones muy bien, sin perder forma.


# ejercicios visualizing relationships ------------------------------------

#ejercicio1

glimpse(mpg)
#en mpg, las variables categóricas son manufacturer, class, fl, drv, model y trans
#las numéricas son displ, year, cyl, cty y hwy

#ejercicio 2
ggplot(mpg, aes(x = hwy, y = displ)) +
  geom_point()
ggplot(mpg, aes(x = hwy, y = displ, color = cty)) +
  geom_point()
ggplot(mpg, aes(x = hwy, y = displ, size = cty)) +
  geom_point()
ggplot(mpg, aes(x = hwy, y = displ, color = cty, size = cty)) +
  geom_point()
ggplot(mpg, aes(x = hwy, y = displ, color = cty, size = cty, shape = drv)) +
  geom_point()
#ejercicio 3
ggplot(mpg, aes(x = hwy, y = displ, linewidth = cty)) +
  geom_point()
#no pasa nada que sirva, porque los puntos no tienen ancho de linea

#ejercicio 4
ggplot(mpg, aes(x = hwy, y = hwy, color = hwy)) +
  geom_point()
#es redundante, se forma una especie de recta de igualdad.

#ejercicio 5

ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm, color = species)) +
  geom_point()
#esto nos muestra que la dependencia no esta tanto en las variables de los ejes 
#sino que estan mas relacionadas en la variable species

ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm, color = species)) +
  geom_point() +
  facet_wrap(~species)
#estoes mas claro porque nos muestra el subconjunto de cada especie y podemos ver la correlacion mas clara

#ejercicio 6
ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() +
  labs(color = "Species")
#aparece species duplicada

ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm,
    color = species, shape = species
  )
) +
  geom_point() +
  labs(
    color = "Species",
    shape = "Species"
  )
#al usar la misma leyenda para shape y color se corrige este problema

#ejercicio 7
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")
#el primero te muestra como se distriuyen las especies en las islas
#el segundo como se "distribuyen las islas en cuanto a especies"

