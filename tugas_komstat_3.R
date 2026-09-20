library(DAAG)
# Memanggil dataset airquality
data(airquality)

# Melihat isi data
airquality

# Melihat struktur data
str(airquality)

# Melihat ringkasan data
summary(airquality)

# Histogram Wind
hist(airquality$Wind,
     main = "Histogram Kecepatan Angin (Wind)",
     xlab = "Kecepatan Angin",
     ylab = "Frekuensi",
     col = "lightblue",
     border = "black",
     probability = TRUE)

# Density
lines(density(airquality$Wind, na.rm = TRUE),
      col = "red",
      lwd = 2)

# Membuat boxplot
boxplot(airquality$Wind,
        main = "Boxplot Wind",
        ylab = "Kecepatan Angin",
        col = "lightblue",
        border = "black")

# Stem adn leaf
stem(airquality$Wind)

# Scater plot
plot(airquality$Wind,
     airquality$Ozone,
     main = "Scatter Plot Wind terhadap Ozone",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 19,
     col = "blue")

abline(lm(Ozone ~ Wind, data = airquality),
       col = "red",
       lwd = 2)