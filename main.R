message <- "Hello world"
print(message)


# Läser in csv filen.
data <- read.csv2(file = "SUSsvaren.csv")

# Normaliserar enkätsvaren
# Input 1-5 i enkäten, output 0-100.

# Skapar vektorer för att välja varannan kolumn i en dataframe
columns_even <- c(FALSE, TRUE)
columns_odd <- c(TRUE, FALSE)

# frågor med jämna tal -> 5 - input (negativa frågor
# Subtrahera i tur och ordning varje elements värde från 5 i de jämna kolumnerna
5 - data[,columns_even]

# Frågor med udda tal -> input - 1  (positiva frågor).
# Subtrahera 1 från alla element i de udda kolumnerna
data[,columns_odd] - 1

# Svaren för varje fråga adderas ihop och multipliceras med 2,5.
sus_result <- rowSums(data * 2.5)


# Beräkna medelvärdet av resultatet
mean(sus_result)
# Beräkna medianen av resultatet
median(sus_result)
# Beräkna standardavvikelsen av resultatet
sd(sus_result)
# Beräkna minimivärdet av resultatet
min(sus_result)
# Beräkna maximivärdet av resultatet
max(sus_result)