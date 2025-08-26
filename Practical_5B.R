
mu0 <- 799       
xbar <- 760      
sigma <- 60      
n <- 40
alpha <- 0.05    


z_value <- (xbar - mu0) / (sigma / sqrt(n))
z_value

z_critical <- qnorm(1 - alpha/2)
c(-z_critical, z_critical)

p_value <- 2 * (1 - pnorm(abs(z_value)))
p_value

if (abs(z_value) > z_critical) {
  cat("Reject H0: The streaming service's claim is not valid.\n")
} else {
  cat("Fail to Reject H0: The streaming service's claim holds true.\n")
}
