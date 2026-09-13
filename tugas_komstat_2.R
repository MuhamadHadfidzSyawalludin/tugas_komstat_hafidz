# Memanggil library dplyr untuk mengolah data
library(dplyr)
# Memanggil dataset iris yang sudah tersedia di R
data(iris)
# Menampilkan seluruh data iris
iris
# Menampilkan kolom Sepal.Length
iris$Sepal.Length
# Menyebutkan tipe data tiap kolom(struktur iris)
str(iris)
# Membuat variabel baru dengan ketentuan
#jika nilai > 3 masuk ke dalam kategori nilai "Besar"
#dan jika nilai < 3 masuk ke dalam kategori nilai "Kecil"
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
# Untuk melihat hasilnya
iris[, c("Sepal.Width", "turunan")]
# Mengubah variabel turunan menjadi sapel
names(iris)[names(iris) == "turunan"] <- "sepal"
head(iris)
#ambil data dengan sepal bernilai besar dari spesies virginica
vrgnc <- iris %>%
  filter (
    sepal == "Besar", Species == "virginica"
  )
vrgnc
# Mengecek jumlah spesies dalam data
table(iris$Species)
#pecah data iris menjadi 3 data frame dengan tiap  data frame khusus untuk species tertentu
setosa <- iris[iris$Species == "setosa",]
versicolor <- iris[iris$Species == "versicolor",]
virginica <- iris[iris$Species == "virginica",]
# Tampilkan
setosa
versicolor
virginica
#dari setiap data frame species, urutkan data berdasarkan sepal.width
setosa <- setosa[order(setosa$Sepal.Width), ]
versicolor <- versicolor[order(versicolor$Sepal.Width), ]
virginica <- virginica[order(virginica$Sepal.Width), ]
#Tampilkan
setosa
versicolor
virginica