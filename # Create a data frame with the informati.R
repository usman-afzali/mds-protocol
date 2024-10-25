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







library(tidyverse)
library(plan)
library(forcats)

df <- data.frame(
  task = c("Community Consultation", "RA Hiring & Training", "Wave 1", "Social Media Marketing", "Wave 2", "Wave 3", "Research Symposia", "Wave 1 Data Analysis"), 
  start = c("2022-02-01", "2023-07-24", "2023-10-23", "2023-12-27", "2024-10-26", "2025-10-26", "2025-04-01", "2024-10-25"),
  end = c("2024-10-25", "2023-10-27", "2024-10-25", "2024-10-25", "2025-10-25", "2026-02-14", "2025-06-30", "2025-02-28")
)


df <- df %>%
  mutate(start = as.Date(start), end = as.Date(end))

# Reorder tasks as desired
custom_order <- c("Community Consultation", "RA Hiring & Training", "Wave 1", "Social Media Marketing", "Wave 2", "Wave 1 Data Analysis", "Research Symposia", "Wave 3")

ggsave("project_timeline.png", 
       plot = ggplot(df, aes(x = start, xend = end, y = fct_relevel(task, custom_order), yend = fct_relevel(task, custom_order), color = task)) +
                geom_segment(size = 2) +  
                scale_color_manual(values = c("#6fb1e4", "#dca237", "#469c75", "#efe361", "#3071ad", "#c66626", "#c17da5", "#000000")) +  
                theme_minimal() +  
                labs(title = "Project Timeline", x = "Date", y = "Task", caption = "Figure 1: Project timeline showing various tasks and their durations.") +  
                theme(
                  axis.text.y = element_text(size = 12),
                  plot.title = element_text(hjust = 0.5, size = 16),
                  legend.position = "none",
                  panel.grid.major.x = element_line(color = "lightgray", linewidth = 0.5),
                  panel.grid.minor.x = element_blank(),
                  panel.grid.major.y = element_blank(),
                  panel.grid.minor.y = element_blank(),
                  panel.spacing = unit(0.5, "lines")
                ),
       width = 10, height = 6, units = "in")