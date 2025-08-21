library(MASS)
str(survey)

height_data<-survey$Height
mean_height<-mean(height_data, na.rm = TRUE)
print(mean_height)

standard_error<-sd(height_data, na.rm = TRUE)/sqrt(length(height_data))
print(standard_error)

df <- n - 1
m_o_e<-qt(0.95, df = length(height_data)-1)*standard_error
print(m_o_e)

upper_bound<- mean_height + m_o_e
lower_bound<- mean_height - m_o_e
cat("Lower Bound:", lower_bound)
cat("Upper Bound:", upper_bound)
