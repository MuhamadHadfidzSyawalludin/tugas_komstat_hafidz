# No.1
# Parameter distribusi Poisson
lambda <- 3
x <- 0:12
# Menghitung P(X >= 5)
hasil <- 1 - ppois(4, lambda)

hasil

pmf <- dpois(x, lambda)
plot(x, pmf, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')

# No.2
# Parameter
N <- 100    # ukuran populasi
K <- 20     # jumlah bola merah
n <- 10     # ukuran sampel

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)

data.frame(k = k, P = pmf)

# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak bola merah dalam sampel)",
     ylab = "P(X=k)")

# No.3
#Simulasikan 1.000 percobaan Binomial (n=15,p=0.4)
#dan bandingkan histogram hasil simulasi dengan PMF teoretis.
set.seed(2025)
n <- 15
p <- 0.4
simulai<- rbinom(1000, size=n, prob=p)  
hist(simulai, breaks = seq(-0.5, n + 0.5, by = 1), probability = TRUE,
     main = "Histogram Simulasi vs PMF Binomial", 
     xlab = "k", ylab = "P(X=k)", col = "lightgreen")
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
lines(x, pmf, type = "b", pch = 16, col = "blue", lwd = 3)
