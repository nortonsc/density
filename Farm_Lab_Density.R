

library(tidyverse)

# Lab 292 Data

lab <- read.csv("cult_density_weights.csv")
names(lab)
summary(lab)
str(lab)
View(lab)




ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Trough, y = PPFD, group = Trough, color = Trough))

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Trough, y = Weight.Grams, group = Trough))

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Spectrum, y = Weight.Grams, group = Spectrum, color = Spectrum))

ggplot(data = lab) +
  geom_point(mapping = aes(x = PPFD, y = Weight.Grams)) +
  geom_smooth(mapping = aes(x = PPFD, y = Weight.Grams), method = lm)

ggplot(data = lab) +
  geom_point(mapping = aes(x = PPFD, y = Weight.Grams, color = Spectrum)) +
  geom_smooth(mapping = aes(x = PPFD, y = Weight.Grams, color = Spectrum), method = lm, se = FALSE)

ggplot(data = lab) +
  geom_point(mapping = aes(x = PPFD, y = Weight.Grams, color = as.factor(Trough))) +
  geom_smooth(mapping = aes(x = PPFD, y = Weight.Grams, color = as.factor(Trough)), method = lm, se = FALSE)

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Column, y = PPFD, group = Column, color = Column))

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Column, y = PPFD, group = Column, color = Column)) +
  facet_wrap(~Trough)

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Column, y = Weight.Grams, group = Column, color = Column))

ggplot(data = lab) +
  geom_boxplot(mapping = aes(x = Column, y = Weight.Grams, group = Column, color = Column)) +
  facet_wrap(~Trough)

names(lab)

ggplot(data = lab) +
  geom_point(mapping = aes(x = Density, y = Weight.Grams))

ggplot(data = lab) +
  geom_point(mapping = aes(x = Density, y = Weight.Grams)) +
  geom_smooth(mapping = aes(x = Density, y = Weight.Grams), method = lm)

ggplot(data = lab) +
  geom_point(mapping = aes(x = Density, y = Weight.Grams, color = Spectrum)) +
  geom_smooth(mapping = aes(x = Density, y = Weight.Grams, color = Spectrum), method = lm, se = FALSE)

ggplot(data = lab) +
  geom_point(mapping = aes(x = Density, y = Weight.Grams, color = Spectrum)) +
  geom_smooth(mapping = aes(x = Density, y = Weight.Grams, color = Spectrum), method = lm, se = FALSE)

plot(lab$Density, lab$Weight.Grams)
labmod1 <-lm(lab$Weight.Grams ~ lab$Density, data = lab)
summary(labmod1)
plot(labmod1)

labmod2<- lm(lab$Weight.Grams ~ lab$Density * lab$PPFD, data = lab)
summary(labmod2)

# FARM

farm <- read.csv("den.csv")
view(farm)







