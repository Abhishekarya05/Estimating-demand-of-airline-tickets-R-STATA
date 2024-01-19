library(haven)
airfare <- read_dta("UT Dallas/Fall 2023/BUAN 6312/Datasets/airfare.dta")
View(airfare)
hist(dist)
hist(ldist)
hist(fare)
hist(lfare)
hist(passen)
hist(lpassen)
lm1 = lm(lpassen ~ lfare + ldist); summary(lm1)
plot(lm1)
lm2 = lm(lpassen ~ lfare + ldist + ldistsq); summary(lm2)
plot(lm2)
lm3 = lm(lpassen ~ lfare + ldist + ldistsq + as.factor(year)); summary(lm3)
summary(as.factor(dist))
airfare$drhrs = dist/50
attach(airfare)
View(airfare)

map_table = data.frame(
                year = c(1997, 1998, 1999, 2000),
                gdpc = c(4.4, 4.5, 4.8, 4.1),
                inf = c(2.3, 1.6, 2.2, 3.4),
                prcgas = c(1.29, 1.12, 1.22, 1.56))
View(map_table)

airfare$gdpc = map_table$gdpc[match(airfare$year, map_table$year)]
View(airfare)
airfare$inf = map_table$inf[match(airfare$year, map_table$year)]
airfare$prcgas = map_table$prcgas[match(airfare$year, map_table$year)]
View(airfare)
hist(gdpc)
attach(airfare)
hist(gdpc)
hist(inf)
hist(prcgas)
