install.packages("ggplot2")
library(ggplot2)

install.packages("rattle.data")
library (rattle.data)
data("wine")
wine

head(wine)
wine$Alcalinity
tail(wine)
wine$Proline

library(dplyr)

select(wine,Alcohol,Proline)
filter(wine, Alcalinity>15)


ggplot(wine, aes(x=Magnesium, y=Flavanoids))+geom_point() # scatter plot

ggplot(wine, aes(x=Magnesium, y=Flavanoids, color=Hue, size=Proline))+
geom_point() + labs(x="Magnesium", y="Flavanoids", title="Wine data set", subtitle="Scatter plot", caption="Data from library rattle.data")+
theme_minimal() # scatter plot a tema

ggplot(wine, aes(x=Alcohol))+geom_histogram(fill="#69b3a2", color="#e9ecef",alpha=0.7,bindwidth=0.5) # istogramma

ggplot(wine, aes(x=Alcohol))+geom_density(fill="#69b3a2", color="#e9ecef",alpha=0.7,bindwidth=0.5) # densit?

ggplot(wine, aes(y=Alcohol))+geom_boxplot() #boxplot

ggplot(economics,aes(date,unemploy))+geom_line() # a variabile numerica ordinata

ggplot(wine,aes(x=Alcohol, y=Ash))+geom_density2d()+geom_point() # a densit? bidimensionale

ggplot(wine, aes(x=Alcohol,y=Proline))+geom_jitter() #  a dispersione

ggplot(wine, aes(x=Alcohol,y=Proline))+geom_jitter()+geom_smooth(method=lm) # a dispersione con curva interpolante 1

ggplot(wine, aes(x=Alcohol,y=Proline))+geom_jitter()+geom_smooth(method=loess) # a dispersione con curva interpolante 2

ggplot(wine,aes(x=Magnesium, y=Flavanoids,color=Hue,size=Proline))+geom_point() # a 3 o pi? variabili


