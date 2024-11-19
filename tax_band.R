# Load necessary library
library(dplyr)

# Define tax bands
toyota <- toyota %>%
  mutate(
    tax_band = case_when(
      tax <= 150 ~ "Low",       # Tax is less than or equal to 150
      tax > 150 & tax <= 260 ~ "Medium", # Tax is between 151 and 260
      tax > 260 ~ "High"        # Tax is greater than 260
    )
  )

# View the updated data set with the new column
head(toyota)

# Load necessary library
library(ggplot2)  # Install using install.packages("ggplot2") if not already installed

# Create scatterplot
ggplot(toyota, aes(x = tax_band, y = mileage)) +
  geom_jitter(width = 0.2, height = 0, alpha = 0.7, color = "blue") +  # Add jitter for better visibility
  labs(
    title = "Scatterplot of Mileage vs. Tax Band",
    x = "Tax Band",
    y = "Mileage"
  ) +
  theme_minimal()  # Apply a clean theme

