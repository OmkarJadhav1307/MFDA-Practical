
heights <- c(150, 160, 170, 180, 190)   
weights <- c(55, 60, 70, 80, 85)        

model <- lm(weights ~ heights)

summary(model)

coefficients <- coef(model)
coefficients

cat("The regression equation is: Weight =",
    round(coefficients[2], 2), "* Height +",
    round(coefficients[1], 2), "\n")

new_heights <- data.frame(heights = c(155, 165, 175))
predicted_weights <- predict(model, new_heights)

cat("Predicted Weights for Heights 155, 165, 175 cm:\n")
print(predicted_weights)

plot(heights, weights, main="Height vs Weight Regression",
     xlab="Height (cm)", ylab="Weight (kg)", pch=19, col="blue")
abline(model, col="red", lwd=2)

