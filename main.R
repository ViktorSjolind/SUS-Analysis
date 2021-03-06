# L�ser in csv filen.
data <- read.csv2(file = "SUSsvaren.csv")
head(data)

# Normaliserar enk�tsvaren
# Input 1-5 i enk�ten, output 0-100.

# Skapar vektorer f�r att v�lja varannan kolumn i en dataframe
columns_even <- c(FALSE, TRUE)
columns_odd <- c(TRUE, FALSE)

# Fr�gor med j�mna tal -> 5 - input (negativa fr�gor).
# Subtrahera i tur och ordning varje elements v�rde fr�n 5 i de j�mna kolumnerna
# och kombinerar v�rden f�r svaren och multiplicerar med 2,5
even <- 5 - data[,columns_even]
head(even)
even <- rowSums(even * 2.5)
head(even)

# Fr�gor med udda tal -> input - 1  (positiva fr�gor).
# Subtrahera 1 fr�n alla element i de udda kolumnerna
# och kombinerar v�rden f�r svaren och multiplicerar med 2,5
odd <- data[,columns_odd] -1
head(odd)
odd <- rowSums(odd * 2.5)
head(odd)

# Svaren f�r de udda och j�mna fr�gorna adderas ihop.
sus_data <- odd + even
head(sus_data)


# Ber�kna medelv�rdet av resultatet
mean(sus_data)
# Ber�kna medianen av resultatet
median(sus_data)
# Ber�kna standardavvikelsen av resultatet
sd(sus_data)
# Ber�kna minimiv�rdet av resultatet
min(sus_data)
# Ber�kna maximiv�rdet av resultatet
max(sus_data)
