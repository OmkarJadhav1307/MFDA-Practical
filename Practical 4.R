
mu0 <- 10000
xbar <- 9900       
sigma <- 120       
n <- 30
alpha <- 0.05

z_value <- (xbar - mu0) / (sigma / sqrt(n))
z_value

z_critical <- qnorm(alpha)
z_critical

if (z_value < z_critical) {
  cat("Reject H0: The manufacturer's claim is not supported.\n")
} else {
  cat("Fail to Reject H0: The manufacturer's claim stands.\n")
}

p_value <- pnorm(z_value)
p_value

