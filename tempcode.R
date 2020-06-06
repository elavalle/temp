install.packages("MPV")

data(table.b1)

attach(table.b1)

y.lm <- lm(y ~ x8)

y.lm

summary(y.lm)

anova(y.lm)

plot(x8,y, main = "scatterplot games won vs oponent rushing yards", xlab = "opponent rushing yards", ylab = "games won", pch = 19)

abline(y.lm, col = "red")



#newValue = c(2000)

#predict(y.lm, newdata = newValue)



predict(y.lm, data.frame(x8 = 2000), interval = "confidence") #prediction of the MEAN number of games won

predict(y.lm, data.frame(x8 = 2000), interval = "prediction") #prediction of the NUMBER of games won



confint(y.lm, 'x8', level = 0.95)



predict(y.lm, data.frame(x8 = 1800), interval = "prediction", level = 0.90)





plot(y.lm$residuals)



y.lm$coefficients



# chapter two



mlr.lm <- lm(y ~ x2 + x7 + x8)

mlr.lm

summary(mlr.lm)

anova(mlr.lm)

plot(x8,y, main = "scatterplot games won vs oponent rushing yards", xlab = "opponent rushing yards", ylab = "games won", pch = 19)

abline(mlr.lm, col = "red")



install.packages("ggplot2")

install.packages("GGally")



question2 <- subset(table.b1,select = c("y", "x2", "x7", "x8"))



ggpairs(question2, lower = list(continuous = "smooth"))



confint(mlr.lm, 'x2', level = 0.95)



plot(mlr.lm)

