# Load necessary library
library(readr)  # For reading the CSV file

# Load the dataset
toyota <- read_csv("toyota.csv")

# Perform linear regression: tax as the dependent variable, mileage as the predictor
model <- lm(tax ~ mileage, data = toyota)

# View the summary of the regression model
summary(model)

# Plot diagnostic plots for the regression model
par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid
plot(model)

plot (x=toyota$mileage, y=toyota$tax, 
      main="Scatterplot Tax vs Mileage", xlab="Mileage (mi.)", ylab="Tax (£)")

boxplot(toyota$mileage, mean="Boxplot of Toyota mileage", ylab="mileage")

boxplot(mileage~tax,data=toyota, main="Car Mileage Data",
        +         xlab="tax", ylab="mileage")
