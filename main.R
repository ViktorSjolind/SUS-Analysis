# Läser in csv filen.
data <- read.csv2(file = "SUSsvaren.csv")
head(data)

# Normaliserar enkätsvaren
# Input 1-5 i enkäten, output 0-100.

# Skapar vektorer för att välja varannan kolumn i en dataframe
columns_even <- c(FALSE, TRUE)
columns_odd <- c(TRUE, FALSE)

# Frågor med jämna tal -> 5 - input (negativa frågor).
# Subtrahera i tur och ordning varje elements värde från 5 i de jämna kolumnerna
# och kombinerar värden för svaren och multiplicerar med 2,5
even <- 5 - data[,columns_even]
head(even)
even <- rowSums(even * 2.5)
head(even)

# Frågor med udda tal -> input - 1  (positiva frågor).
# Subtrahera 1 från alla element i de udda kolumnerna
# och kombinerar värden för svaren och multiplicerar med 2,5
odd <- data[,columns_odd] -1
head(odd)
odd <- rowSums(odd * 2.5)
head(odd)

# Svaren för de udda och jämna frågorna adderas ihop.
sus_data <- odd + even
head(sus_data)


# Beräkna medelvärdet av resultatet
mean(sus_data)
# Beräkna medianen av resultatet
median(sus_data)
# Beräkna standardavvikelsen av resultatet
sd(sus_data)
# Beräkna minimivärdet av resultatet
min(sus_data)
# Beräkna maximivärdet av resultatet
max(sus_data)
