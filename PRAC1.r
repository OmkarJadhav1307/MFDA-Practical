x <- 0:3

# Probability vectors
c_p <- c(0.1, 0.3, 0.4, 0.2)  # Croissants
m_p <- c(0.2, 0.4, 0.3, 0.1)  # Muffins
d_p <- c(0.3, 0.4, 0.2, 0.1)  # Donuts

# Expected values
E_c <- sum(x * c_p)
E_m <- sum(x * m_p)
E_d <- sum(x * d_p)

# Expected squares
E2_c <- sum((x^2) * c_p)
E2_m <- sum((x^2) * m_p)
E2_d <- sum((x^2) * d_p)

# Variances
V_c <- E2_c - (E_c^2)
V_m <- E2_m - (E_m^2)
V_d <- E2_d - (E_d^2)

#Standard deviations
SD_c <- sqrt(V_c)
SD_m <- sqrt(V_m)
SD_d <- sqrt(V_d)

# Printing results
cat("Croissants: E =", E_c, ", Var =", V_c, ", SD =", SD_c, "\n")
cat("Muffins:    E =", E_m, ", Var =", V_m, ", SD =", SD_m, "\n")
cat("Donuts:     E =", E_d, ", Var =", V_d, ", SD =", SD_d, "\n")

# Plotting probability distributions
par(mfrow=c(1,3))
barplot(c_p, col="red", names.arg=x, main="Croissants", ylab="Probability")
barplot(m_p, col="yellow", names.arg=x, main="Muffins", ylab="Probability")
barplot(d_p, col="green", names.arg=x, main="Donuts", ylab="Probability")
