# Create a data frame with the information for each city
data <- data.frame(
  City = c("Auckland", "Palmerston North", "Christchurch", "Wellington", "Dunedin", "Hamilton"),
  Total_Organizations = c(126, 5, 22, 19, 18, 18),
  Reached_Out = c(54, 5, 20, 18, 9, 8),
  Responded = c(40, 4, 12, 11, 8, 4)
)

# Display the data
print("City-wise data:")
print(data)

# Calculate the total for each category
total_organizations <- sum(data$Total_Organizations)
total_reached_out <- sum(data$Reached_Out)
total_responded <- sum(data$Responded)

# Display the totals
cat("Total number of organizations: ", total_organizations, "\n")
cat("Total number of organizations reached out to: ", total_reached_out, "\n")
cat("Total number of responses: ", total_responded, "\n")






#| out-width: 50%
library(ggplot2)

data <- data.frame(
  Date = c("Dec-2023", "Feb-2024", "Apr-2024", "Jun-2024"),
  Responses = c(151, 241, 373, 453)
)

data$Date <- as.Date(paste("01-", data$Date, sep=""), format="%d-%b-%Y")

ggplot(data, aes(x = Date, y = Responses)) +
  geom_line(color = "#2c3e50", size = 1) +
  geom_point(color = "#27ae60", size = 2) +
  geom_text(aes(label = Responses), vjust = -0.5, color = "#e74c3c", size = 3) +  # Changed color to bright green
  labs(title = "Response Rate Over Time",
       x = "Date",
       y = "Number of Responses") +
  scale_x_date(date_labels = "%b-%Y", date_breaks = "1 month") +
  theme_light(base_size = 10) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 10, color = "#34495e"),
    axis.title = element_text(face = "bold", size = 10, color = "#34495e"),
    axis.text = element_text(color = "#2c3e50")
  )




