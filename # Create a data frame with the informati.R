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
