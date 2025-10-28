chips <- c(1120, 1095, 1110, 1130, 1080, 1150, 1105, 1075,
           1115, 1090, 1125, 1140, 1060, 1100, 1160, 1085)
median_claim <- 1100
positive <- sum(chips > median_claim)  # "+" signs
negative <- sum(chips < median_claim)  # "-" signs
n <- positive + negative
result <- binom.test(positive, n, p = 0.5, alternative = "greater")
cat("Positive signs:", positive, "\n")
cat("Negative signs:", negative, "\n")
cat("Total used in test:", n, "\n")
cat("p-value:", round(result$p.value, 4), "\n")
if (result$p.value < 0.05) {
  cat("Claim supported: Average chips > 1100\n")
} else {
  cat("Claim not supported: Not enough evidence\n")
}

