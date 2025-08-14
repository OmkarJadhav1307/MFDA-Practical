n = 1000 
sample_means <- rep(NA, n) 
for (i in 1:n) { 
    sample_means[i] <- mean(rnorm(20, mean=6, sd=10)) 
  } 
head(sample_means, 30) 
hist(sample_means, main = "Sampling Distribution", xlab = "Sample Means", ylab = "Frequency", col = "red") 
mean(sample_means) 
sd(sample_means) 
sum(sample_means < 10) / length(sample_means) 
  