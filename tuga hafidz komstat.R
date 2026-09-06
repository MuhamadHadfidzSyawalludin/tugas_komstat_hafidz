#Vector Numeric
v_num <- c(3.7, 2.5, 4.8)
v_num

# Vector integer
v_int <- c(3L, 4L, 5L)
v_int

# Vector logical
v_log <- c(TRUE, FALSE, TRUE)
v_log

# Vector character
v_char <- c("kimia", "biologi", "Data")
v_char


# Matrix 4x4
m <- matrix(1:16, nrow = 4, ncol = 4)
m

# Array 4 dimensi
a <- array(1:12, dim = c(2, 4, 2))
a


# Membuat data frame
df <- data.frame(
  Nama = c("Udin", "Syawal", "Hafidz", "Ahmad"),
  Umur = c(23, 25, 22, 30),
  Lulus = c(TRUE, FALSE, TRUE, FALSE)
)

df

# Membuat list
list_4_isi <- list(
  ma = matrix(1:16, nrow = 4, ncol = 4),
  a = array(1:12, dim = c(2, 4, 2)),
  df = data.frame(ID = 1:4, Nilai = c(80, 90, 50, 70)),
  angka = c(1, 2, 3)
)
mylist <- list(
  v_baris = c(1, 2, 3),
  v_kolom = matrix(1:4, nrow = 2),
  m = matrix(1:16, nrow = 4, ncol = 4),
  df = data.frame(ID = 1:4, Nilai = c(80, 90, 50, 70)),
  list = list_4_isi
)

mylist