# Load required libraries
library(tidyverse)
library(lubridate)

# Import dataset 
emails <- data.frame(
  received_time = c("2023-10-02 08:30:00", "2023-10-02 10:30:00", "2023-10-03 16:30:00", "2023-10-04 12:30:00"),
  responded_time = c("2023-10-02 10:45:00", "2023-10-02 12:30:00", "2023-10-03 17:45:00", "2023-10-04 11:30:00")
)

# Convert timestamps to POSIXct objects
emails$received_time <- as.POSIXct(emails$received_time, format = "%Y-%m-%d %H:%M:%S")
emails$responded_time <- as.POSIXct(emails$responded_time, format = "%Y-%m-%d %H:%M:%S")

# List of holidays to exclude
holidays <- as.Date(c("2023-10-09", "2023-10-16")) # Add more holidays as needed

# Function to check if a date is a business day (Monday to Friday, excluding holidays)
is_business_day <- function(date) {
  weekday(date) %in% 2:6 && !(date %in% holidays)
}

# Function to check if an email was received during business hours
is_business_hours <- function(date) {
  is_business_day(date) && hour(date) >= 9 && hour(date) <= 17
}

# Calculate the count of emails responded within a two-hour window on business days
result <- emails %>%
  filter(is_business_hours(received_time)) %>% # Filter for business hours
  mutate(response_time = as.numeric(difftime(responded_time, received_time, units = "hours"))) %>%
  filter(response_time <= 2) %>% # Filter for response within 2 hours
  summarise(count = n())

# Print the result
cat("Count of emails received during business hours and responded within a 2-hour window on business days:", result$count, "\n")
