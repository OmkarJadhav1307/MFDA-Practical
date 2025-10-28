house_data <- data.frame(
  Price = c(250000, 400000, 320000, 500000, 600000, 300000, 450000, 550000, 700000, 380000),
  Area = c(1200, 1800, 1500, 2200, 2500, 1300, 2000, 2300, 3000, 1600),
  Bedrooms = c(2, 3, 3, 4, 4, 2, 3, 4, 5, 3),
  Distance = c(10, 8, 12, 6, 5, 15, 7, 4, 3, 9) 
  )
print(house_data)
model <- lm(Price ~ Area + Bedrooms + Distance, data = house_data)

summary(model)

new_data <- data.frame(
  Area = c(2100, 1700, 2600),
  Bedrooms = c(3, 2, 4),
  Distance = c(6, 10, 4)
)

predicted_prices <- predict(model, newdata = new_data)
predicted_prices

par(mfrow = c(2,2))  
plot(model)


library(Metrics)

actual <- house_data$Price
predicted <- predict(model)

r2 <- summary(model)$r.squared
rmse_val <- rmse(actual, predicted)
mae_val <- mae(actual, predicted)

cat("R-squared:", r2, "\n")
cat("RMSE:", rmse_val, "\n")
cat("MAE:", mae_val, "\n")
