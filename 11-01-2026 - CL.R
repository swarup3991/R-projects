getwd()

flight1 <- read.csv('flights.csv')

### structure of the data
str(flight1)

mean(flight1$dep_delay, na.rm = TRUE)
sd(flight1$dep_delay, na.rm = TRUE)
min(flight1$dep_delay, na.rm = TRUE)
max(flight1$dep_delay, na.rm = TRUE)
summary(flight1$dep_delay, na.rm = TRUE)

mean(flight1$arr_delay, na.rm = TRUE)
sd(flight1$arr_delay, na.rm = TRUE)
min(flight1$arr_delay, na.rm = TRUE)
max(flight1$arr_delay, na.rm = TRUE)
summary(flight1$arr_delay, na.rm = TRUE)

summary(flight1$carrier)
str(flight1$carrier)

flight1$carrier <- factor(flight1$carrier)

flight1$flight <- factor(flight1$flight)
summary(flight1$flight)

flight1$tailnum <- factor(flight1$tailnum)
flight1$origin <- factor(flight1$origin)
flight1$dest <- factor(flight1$dest)

summary(flight1$tailnum)
summary(flight1$origin)
summary(flight1$dest)

q1_flight1 <- filter(flight1, dep_delay > 120)

q2_flight1 <- filter(flight1, dep_delay < 120)

q3_flight1 <- filter(flight1, dep_delay > 120 | arr_delay > 120)

q4__flight1 <- filter(flight1, dep_delay >= 120 & arr_delay >= 120)

q5_flight1 <- filter(flight1, dep_delay >= 120 & arr_delay >= 120 & carrier == 'UA')

q6_flight1 <- filter(flight1, dep_delay >= 120 & arr_delay >= 120 & carrier != 'UA')

q7_data <-select(flight1, arr_delay, dep_delay, carrier)
names(flight1)

q8_data <-select(flight1, flight, tailnum, origin, dest)

q9_data <- flight1%>% select(arr_delay, dep_delay, carrier) %>% 
  filter(arr_delay > 120) %>% 
  rename(CARRIER=carrier, ARR_DELAY=arr_delay, DEP_DELAY=dep_delay) %>%
  mutate(Total_Delay =  ARR_DELAY + DEP_DELAY) %>%
  group_by(CARRIER) %>% 
  summarise(MEAN_DEP_DELAY = mean(DEP_DELAY), MEAN_ARR_DELAY = mean(ARR_DELAY),
FREQUENCY = n())

q10_data <- flight1%>% select(flight, carrier, arr_delay, dep_delay) %>% 
  filter(arr_delay > 120 & dep_delay > 120) %>% 
  group_by (flight, carrier) %>%
  summarise(MEAN_AD = mean(arr_delay, na.ra = T), MEAN_DD = mean(dep_delay, na.rm = T),
  FREQUENCY = n()) %>%
arrange(desc(MEAN_DD))


