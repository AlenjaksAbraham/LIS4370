library(ggplot2)
library(dplyr)

df <- read.csv("tips.csv")


#bar chart
ggplot(df, aes(x = day, y = tip, fill = day)) +
  geom_bar(stat = "summary", fun = sum) +
  labs(title = "Total value of Tips per Day", x = "Day of the Week", y = "Tips collected at E.O.D($)")

#box plot
ggplot(df, aes(x = sex, y = tip, fill = sex)) +
  geom_boxplot() +
  scale_fill_manual(values = c("pink", "lightblue")) +
  labs(title = "Distribution of Tips by Gender", x = "Gender", y = "Tips($)") 

#scatter plot
ggplot(df, aes(x = total_bill, y = tip, color = time)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Scatter Plot of Tips vs.Total Bill depending on Time of Day",
       x = "Total Bill ($)", y = "Tips ($)", color = "Time of Day")



