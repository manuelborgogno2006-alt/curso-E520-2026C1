tarea_04

# chapter 3
library(nycflights13)
library(tidyverse)

# vemos los datos:
nycflights13::airlines
# A tibble: 16 × 2
carrier name                       
<chr>   <chr>                      
  1 9E      Endeavor Air Inc.          
2 AA      American Airlines Inc.     
3 AS      Alaska Airlines Inc.       
4 B6      JetBlue Airways            
5 DL      Delta Air Lines Inc.       
6 EV      ExpressJet Airlines Inc.   
7 F9      Frontier Airlines Inc.     
8 FL      AirTran Airways Corporation
9 HA      Hawaiian Airlines Inc.     
10 MQ      Envoy Air                  
11 OO      SkyWest Airlines Inc.      
12 UA      United Air Lines Inc.      
13 US      US Airways Inc.            
14 VX      Virgin America             
15 WN      Southwest Airlines Co.     
16 YV      Mesa Airlines Inc.         
> nycflights13::airports
# A tibble: 1,458 × 8
faa   name                             lat    lon   alt    tz dst   tzone         
<chr> <chr>                          <dbl>  <dbl> <dbl> <dbl> <chr> <chr>         
  1 04G   Lansdowne Airport               41.1  -80.6  1044    -5 A     America/New_Y…
2 06A   Moton Field Municipal Airport   32.5  -85.7   264    -6 A     America/Chica…
3 06C   Schaumburg Regional             42.0  -88.1   801    -6 A     America/Chica…
4 06N   Randall Airport                 41.4  -74.4   523    -5 A     America/New_Y…
5 09J   Jekyll Island Airport           31.1  -81.4    11    -5 A     America/New_Y…
6 0A9   Elizabethton Municipal Airport  36.4  -82.2  1593    -5 A     America/New_Y…
7 0G6   Williams County Airport         41.5  -84.5   730    -5 A     America/New_Y…
8 0G7   Finger Lakes Regional Airport   42.9  -76.8   492    -5 A     America/New_Y…
9 0P2   Shoestring Aviation Airfield    39.8  -76.6  1000    -5 U     America/New_Y…
10 0S9   Jefferson County Intl           48.1 -123.    108    -8 A     America/Los_A…
# ℹ 1,448 more rows
# ℹ Use `print(n = ...)` to see more rows
> nycflights13::flights
# A tibble: 336,776 × 19
year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
<int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
  1  2013     1     1      517            515         2      830            819
2  2013     1     1      533            529         4      850            830
3  2013     1     1      542            540         2      923            850
4  2013     1     1      544            545        -1     1004           1022
5  2013     1     1      554            600        -6      812            837
6  2013     1     1      554            558        -4      740            728
7  2013     1     1      555            600        -5      913            854
8  2013     1     1      557            600        -3      709            723
9  2013     1     1      557            600        -3      838            846
10  2013     1     1      558            600        -2      753            745
# ℹ 336,766 more rows
# ℹ 11 more variables: arr_delay <dbl>, carrier <chr>, flight <int>, tailnum <chr>,
#   origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>, hour <dbl>,
#   minute <dbl>, time_hour <dttm>
# ℹ Use `print(n = ...)` to see more rows
> nycflights13::planes
# A tibble: 3,322 × 9
tailnum  year type                   manufacturer model engines seats speed engine
<chr>   <int> <chr>                  <chr>        <chr>   <int> <int> <int> <chr> 
  1 N10156   2004 Fixed wing multi engi… EMBRAER      EMB-…       2    55    NA Turbo…
2 N102UW   1998 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
3 N103US   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
4 N104UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
5 N10575   2002 Fixed wing multi engi… EMBRAER      EMB-…       2    55    NA Turbo…
6 N105UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
7 N107US   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
8 N108UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
9 N109UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
10 N110UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
# ℹ 3,312 more rows
# ℹ Use `print(n = ...)` to see more rows
> nycflights13::planes
# A tibble: 3,322 × 9
tailnum  year type                   manufacturer model engines seats speed engine
<chr>   <int> <chr>                  <chr>        <chr>   <int> <int> <int> <chr> 
  1 N10156   2004 Fixed wing multi engi… EMBRAER      EMB-…       2    55    NA Turbo…
2 N102UW   1998 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
3 N103US   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
4 N104UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
5 N10575   2002 Fixed wing multi engi… EMBRAER      EMB-…       2    55    NA Turbo…
6 N105UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
7 N107US   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
8 N108UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
9 N109UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
10 N110UW   1999 Fixed wing multi engi… AIRBUS INDU… A320…       2   182    NA Turbo…
# ℹ 3,312 more rows
# ℹ Use `print(n = ...)` to see more rows
> nycflights13::weather
# A tibble: 26,115 × 15
origin  year month   day  hour  temp  dewp humid wind_dir wind_speed wind_gust
<chr>  <int> <int> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>     <dbl>
  1 EWR     2013     1     1     1  39.0  26.1  59.4      270      10.4         NA
2 EWR     2013     1     1     2  39.0  27.0  61.6      250       8.06        NA
3 EWR     2013     1     1     3  39.0  28.0  64.4      240      11.5         NA
4 EWR     2013     1     1     4  39.9  28.0  62.2      250      12.7         NA
5 EWR     2013     1     1     5  39.0  28.0  64.4      260      12.7         NA
6 EWR     2013     1     1     6  37.9  28.0  67.2      240      11.5         NA
7 EWR     2013     1     1     7  39.0  28.0  64.4      240      15.0         NA
8 EWR     2013     1     1     8  39.9  28.0  62.2      250      10.4         NA
9 EWR     2013     1     1     9  39.9  28.0  62.2      260      15.0         NA
10 EWR     2013     1     1    10  41    28.0  59.6      260      13.8         NA
# ℹ 26,105 more rows
# ℹ 4 more variables: precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>
# ℹ Use `print(n = ...)` to see more rows

glimpse(flighs)

#ejemplos del capitulo 3
#filter
flights |> filter(dep_delay > 120)
flights |> filter(month == 1 & day == 1)
flights |> filter(month %in% c(1, 2))
#guardar el resultado uso operador <-
jan1 <- flights |> 
  filter(month == 1 & day == 1)
#arrange
flights |> arrange(year, month, day, dep_time)
#desc
flights |> arrange(desc(dep_delay))
#distinct
flights |> 
  +     distinct()
flights |> 
  +     distinct(origin, dest)
flights |> 
  distinct(origin, dest, .keep_all = TRUE)
# count
flights |>
  count(origin, dest, sort = TRUE)
# ejercicios data transformation
#----------- ejercicios rows ----
#ejercicio 1
# 1) Had an arrival delay of two or more hours
flights |> filter(arr_delay >= 120)
# 2) Flew to Houston (IAH or HOU)
flights |> filter(dest %in% c("IAH", "HOU"))
# 3) Were operated by United, American, or Delta
flights |> filter(carrier %in% c("UA", "AA", "DL"))
# 4) Departed in summer (July, August, September)
flights |> filter(month %in% c(7, 8, 9))
# 5) Arrived more than two hours late, but didn’t leave late
flights |> filter(arr_delay > 120, dep_delay <= 0)
# 6) Were delayed by at least an hour, but made up over 30 minutes in flight
flights |> filter(dep_delay >= 60, dep_delay - arr_delay > 30)

#ejercicio 2
Sort flights to find the flights with the longest departure delays. Find the flights that left earliestin the morning.
flights |> arrange(desc(dep_delay))
flights |> arrange(dep_time)
#ejercicio 3
Sort flights to find the fastest flights. (Hint: Try including a math calculation inside of your function.)
flights |> filter(air_time > 0) |> arrange(desc(distance / air_time))
#ejercicio 4
Was there a flight on every day of 2013? # no supe :(
  
#ejercicio 5
  Which flights traveled the farthest? Which traveled the least?
  # Más lejanos
  flights |> 
  arrange(desc(distance))

# Más cortos
flights |> 
  arrange(distance)
 #ejercicio 6
Does it matter what order you used filter() and arrange() if you’re using both? Why/why not? Think about the results and how much work the functions would have to do.

flights |> arrange(desc(distance / air_time)) |> filter(air_time > 0) 
flights |> filter(air_time > 0) |> arrange(desc(distance / air_time))
#me dieron el mismo resultado, la diferencia según busque es que usando filter antes que arrange el programa debe realizar menos operaciones (+eficiencia)

#teoría columns

#mutate
flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
  )
#> # A tibble: 336,776 × 21
#>    year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
#>   <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
#> 1  2013     1     1      517            515         2      830            819
#> 2  2013     1     1      533            529         4      850            830
#> 3  2013     1     1      542            540         2      923            850
#> 4  2013     1     1      544            545        -1     1004           1022
#> 5  2013     1     1      554            600        -6      812            837
#> 6  2013     1     1      554            558        -4      740            728
#> # ℹ 336,770 more rows
#> # ℹ 13 more variables: arr_delay <dbl>, carrier <chr>, flight <int>, …


# ejercicios columns ------------------------------------------------------

#ejercicio 1
pienso que tienen una relacion de este estilo

dep_delay = dep_time -sched_dep_time
el retraso es la diferencia entre el tiempo de despegue y el tiempo programado de despegue
#ejercicio 2
estas son las maneras que encontré
# forma directa
flights |> select(dep_time, dep_delay, arr_time, arr_delay)

# con c()
flights |> select(c(dep_time, dep_delay, arr_time, arr_delay))

# con un vector de nombres
vars <- c("dep_time", "dep_delay", "arr_time", "arr_delay")
flights |> select(all_of(vars))

# versión tolerante si alguno no existiera
vars <- c("dep_time", "dep_delay", "arr_time", "arr_delay")
flights |> select(any_of(vars))

# con regex
flights |> select(matches("^(dep|arr)_(time|delay)$"))

# combinando helpers
flights |>
  select(
    contains("_time") & !starts_with("sched") & !starts_with("air"),
    ends_with("delay")
  )

#ejercicio 3
No pasa nada, lo toma como el mismo elemento. No duplica nada.      
#ejercicio 4
any_of() selecciona las variables de un vector. es util porque si falta una columna no tira error
#ejercicio 5
flights |> select(contains("TIME"))
# A tibble: 336,776 × 6
dep_time sched_dep_time arr_time sched_arr_time air_time time_hour          
<int>          <int>    <int>          <int>    <dbl> <dttm>             
  1      517            515      830            819      227 2013-01-01 05:00:00
2      533            529      850            830      227 2013-01-01 05:00:00
3      542            540      923            850      160 2013-01-01 05:00:00
4      544            545     1004           1022      183 2013-01-01 05:00:00
5      554            600      812            837      116 2013-01-01 06:00:00
6      554            558      740            728      150 2013-01-01 05:00:00
7      555            600      913            854      158 2013-01-01 06:00:00
8      557            600      709            723       53 2013-01-01 06:00:00
9      557            600      838            846      140 2013-01-01 06:00:00
10      558            600      753            745      138 2013-01-01 06:00:00

es sorprendente porque "TIME" esta en mayuscula. pero esto es asi porque contains() no distingue entre mayus y minus. 
con este comando se cambia a default y ahi si distingue:
  flights |> select(contains("TIME", ignore.case = FALSE))
#ejercicio 6

flights |>
  rename(air_time_min = air_time) |>
  relocate(air_time_min)
#ejercicio 7
al hacer:
  flights |> 
  select(tailnum) |> 
  arrange(arr_delay)
#> Error in `arrange()`:
#> ℹ In argument: `..1 = arr_delay`.
#> Caused by error:
#> ! object 'arr_delay' not found
tenemos el error previo

esto es porque select(tailnum) nos deja con una unica columna por lo cual arr delay ya no existe (es el objeto de arrange)

# ejercicios groups -------------------------------------------------------

#ejercicio 1
flights |>
  group_by(carrier) |>
  summarise(
    avg_arr_delay = mean(arr_delay, na.rm = TRUE),
    n = n()
  ) |>
  arrange(desc(avg_arr_delay))

challenge:
  a veces las rutas con vuelos a destinos problematicos nos hacen ver algunos carriers como malos.
para eso podemos corregir asi
flights |>
  group_by(carrier, dest) |>
  summarise(
    avg_arr_delay = mean(arr_delay, na.rm = TRUE),
    n = n(),
    .groups = "drop"
  ) |>
  arrange(desc(avg_arr_delay))
#ejercicio 2
flights |>
  filter(!is.na(dep_delay)) |>
  group_by(dest) |>
  slice_max(dep_delay, n = 1, with_ties = TRUE)
#ejercicio 3
flights |>
  filter(!is.na(dep_delay)) |>
  group_by(hour) |>
  summarise(
    avg_dep_delay = mean(dep_delay, na.rm = TRUE),
    n = n()
  ) |>
  ggplot(aes(x = hour, y = avg_dep_delay)) +
  geom_line()
#ejercicio 4
lo que sucederá es que ese valor n se restará al tamaño total del grupo, o sea te quedas con todas las filas menos n
#ejercicio 5
count() agrupa variables, cuenta cuantas filas hay en cada grupo y devuelve una columna llamada n
#ejercicio 6




# ejercicios keys ---------------------------------------------------------

#ejercicio 1
a cada observacion de weather le corresponde un airport
o sea: weather$origin -> airports$faa
#ejercicio 2
si tuviera weather para todos los airports aparecería esta conexion:
  flights$dest -> weather$origin
#ejercicio 3
es el cambio de horario de verano en el cualla 1AM aparece 2 veces.
#ejercicio 4
se puede hacer una tabla así:
  special_days <- tibble(
    date = as.Date(c("2013-12-24", "2013-12-25")),
    label = c("Christmas Eve", "Christmas Day")
  )
, la clave primaria sería: date

y la conectamos asi:
  
  flights |>
  mutate(date = as.Date(sprintf("%d-%02d-%02d", year, month, day))) |>
  left_join(special_days, by = "date")
#ejercicio 5

tabla central : People: playerID
People (playerID)
|\
| \
|  \
|   \
Batting   Salaries

People (playerID)
|\
| \
|  \
Managers   AwardsManagers

batching, pitching y fielding son 3 tablas de desempeño que describen a jugadores en ciertas temporadas o equipos, no hay relacion simple entre ellas


# ejercicios basic joins --------------------------------------------------


#ejercicio 1
flights2 <- flights |>
  select(year, time_hour, origin, dest, tailnum, carrier)
worst_48 <- flights |>
  group_by(origin, time_hour) |>
  summarise(
    mean_dep_delay = mean(dep_delay, na.rm = TRUE),
    n_flights = n(),
    .groups = "drop"
  ) |>
  arrange(desc(mean_dep_delay)) |>
  head(48) |>
  left_join(
    weather |>
      select(origin, time_hour, temp, dewp, humid, precip, visib, wind_speed),
    join_by(origin, time_hour)
  )

worst_48 |>
  select(origin, time_hour, mean_dep_delay, n_flights,
         precip, visib, wind_speed, humid, temp)
# podemos ver que si bien hay veces que las demoras son por poca visibilidad o mal clima, también hay veces que las condiciones son óptimas
#y hay demoras, lo cual sugiere problemas operativos.


#ejercicio 2

top_dest <- flights2 |>
  count(dest, sort = TRUE) |>
  head(10)

flights_top_dest <- flights2 |>
  semi_join(top_dest, join_by(dest))

flights_top_dest

#ejercicio 3

missing_weather <- flights2 |>
  anti_join(
    weather |>
      distinct(origin, time_hour),
    join_by(origin, time_hour)
  )

nrow(missing_weather)

missing_weather |>
  distinct(origin, time_hour) |>
  arrange(origin, time_hour)

#con esto vemos que no, el anti_join nos muestra filas sin registro meteorologico

#ejercicio 4
missing_planes <- flights2 |>
  anti_join(planes, join_by(tailnum))

missing_planes |>
  count(carrier, sort = TRUE)

missing_planes |>
  filter(!is.na(tailnum)) |>
  count(carrier, sort = TRUE) |>
  mutate(
    prop = n / sum(n),
    prop_acum = cumsum(prop)
  )
#como decía el enunciado, una variable explica el 90% del problema y es carrier.

#ejercicio 5

plane_carriers <- flights |>
  filter(!is.na(tailnum)) |>
  group_by(tailnum) |>
  summarise(
    carriers = paste(sort(unique(carrier)), collapse = ", "),
    n_carriers = n_distinct(carrier),
    .groups = "drop"
  )

planes2 <- planes |>
  left_join(plane_carriers, join_by(tailnum))

planes2 |>
  select(tailnum, carriers, n_carriers)

planes2 |>
  count(n_carriers, sort = TRUE)

planes2 |>
  filter(n_carriers > 1) |>
  select(tailnum, carriers, n_carriers)
#la hipotesis se rechaza. la mayoría de los aviones aparecen con solo un carrier pero hay algunos tailnum que fueron volados por mas.

#ejercicio 6

origin_airports <- airports |>
  select(
    faa,
    origin_lat = lat,
    origin_lon = lon
  )

dest_airports <- airports |>
  select(
    faa,
    dest_lat = lat,
    dest_lon = lon
  )

flights_geo <- flights |>
  left_join(origin_airports, join_by(origin == faa)) |>
  left_join(dest_airports, join_by(dest == faa))

flights_geo |>
  select(origin, dest, origin_lat, origin_lon, dest_lat, dest_lon)

# es mejor renombrar antes, para evitar que se dupliquen columnas.

#ejercicio 7
dest_delays <- flights |>
  group_by(dest) |>
  summarise(
    avg_arr_delay = mean(arr_delay, na.rm = TRUE),
    n = n(),
    .groups = "drop"
  ) |>
  filter(n >= 20) |>
  left_join(airports, join_by(dest == faa))

ggplot(dest_delays, aes(x = lon, y = lat)) +
  borders("state") +
  geom_point(aes(size = n, color = avg_arr_delay), alpha = 0.7) +
  coord_quickmap() +
  labs(
    x = NULL, y = NULL,
    size = "Número de vuelos",
    color = "Delay promedio\n(arrival)"
  )
#ejercicio 8

june13_delays <- flights |>
  filter(month == 6, day == 13) |>
  group_by(dest) |>
  summarise(
    avg_arr_delay = mean(arr_delay, na.rm = TRUE),
    n = n(),
    .groups = "drop"
  ) |>
  filter(n >= 5) |>
  left_join(airports, join_by(dest == faa))

ggplot(june13_delays, aes(x = lon, y = lat)) +
  borders("state") +
  geom_point(aes(size = n, color = avg_arr_delay), alpha = 0.8) +
  coord_quickmap() +
  labs(
    x = NULL, y = NULL,
    size = "Número de vuelos",
    color = "Delay promedio\n(arrival)"
  )
#ese dia fue muy complicado respecto a demoras, debido a que hubo un temporal importante y mucho viento.

