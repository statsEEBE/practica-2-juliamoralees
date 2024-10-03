#Codigo para problema 2
mis_dades <- iris
mis_dades
x <- mis_dades$Petal.Length
x
y <- mis_dades$Sepal.Length
y
##recta de regressió
plot(x,y)

x_bar<- mean(x)
x_bar

y_bar<- mean(y)
y_bar

m<-sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)
m

b<-y_bar-m*x_bar
b

##PREDICCION:
m*1.5+b

##PREDICCION SOBRE LAS OBSERVACIONES
y_pred <- m*x+b

plot(x,y)
lines(x, y_pred)

R_sq <- sum((y_pred-y_bar)^2)/sum((y-y_bar)^2)
R_sq

####utilitzant les funcions de R ~-> altgr 4 i espai

lm(y~x)
mod<-lm(y~x)
mod
summary(mod)
