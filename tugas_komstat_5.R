

# ============================================
# SOAL 1: DISTRIBUSI EKSPONENSIAL
# ============================================

# Rata-rata waktu tunggu = 5 menit
# Ditanya: P(X > 5)

pexp(5, rate = 1/5, lower.tail = FALSE)

# Cara lain untuk menghitung P(X > 5)
1 - pexp(5, rate = 1/5)


# ============================================
# SOAL 2: DISTRIBUSI UNIFORM
# ============================================

# Kereta tiba secara acak antara pukul
# 07.00 sampai 07.20
# Interval waktu = 20 menit

a <- 0
b <- 20

# Ragam teoritis distribusi Uniform
(var_teoritis <- (b - a)^2 / 12)

# Simulasi 1000 waktu tunggu
set.seed(2025)
x <- runif(1000, min = a, max = b)

# Ragam hasil simulasi
var(x)


# ============================================
# SOAL 3: DISTRIBUSI EKSPONENSIAL
# ============================================

# Rata-rata masa pakai sensor = 10 tahun
# Ditanya: P(X < 5)

pexp(5, rate = 1/10)

# Cara lain menghitung P(X < 5)
1 - pexp(5, rate = 1/10, lower.tail = FALSE)


# ============================================
# SOAL 4: DISTRIBUSI NORMAL
# ============================================

# Berat kopi berdistribusi normal
# mean = 250 gram
# standar deviasi = 5 gram

mu <- 250
sigma <- 5

# Proporsi kemasan dengan berat < 240 gram
pnorm(240, mean = mu, sd = sigma)

# Menghitung nilai Z
z <- (240 - mu) / sigma

z

# Menghitung peluang menggunakan nilai Z
pnorm(z)


# Grafik distribusi normal

curve(dnorm(x, mean = mu, sd = sigma),
      from = mu - 4*sigma,
      to = mu + 4*sigma,
      lwd = 2,
      main = "Berat Kemasan Kopi N(250, 5^2)",
      xlab = "Berat (gram)",
      ylab = "f(x)")

# Garis batas underweight = 240 gram
abline(v = 240, col = "blue", lwd = 2, lty = 2)
