# Sample data: Gender vs Math Exam Success
data <- matrix(c(30, 20, 25, 25), 
               nrow = 2, 
               byrow = TRUE,
               dimnames = list(Gender = c("Male", "Female"),
                               Success = c("Yes", "No")))

# Print the contingency table
print(data)

# Chi-square test of independence
chi_result <- chisq.test(data)
print(chi_result)

# Custom colors: Green for "Yes", Red for "No"
success_colors <- c("green", "red")

# Mosaic Plot with custom colors
mosaicplot(data, 
           main = "Math Exam Success vs Gender",
           color = success_colors,
           xlab = "Gender",
           ylab = "Success",
           las = 1,
           border = "gray")