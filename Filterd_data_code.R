> data <- read.csv("C:/Users/badhu/Downloads/insurance.csv")
> print(data)

> library(dplyr)
> data <- data %>%
  +     mutate(age_group = case_when(
    +         age >= 15 & age <= 20 ~ "15-20",
    +         age > 20 & age <= 25 ~ "20-25",
    +         age > 25 & age <= 30 ~ "25-30",
    +         age > 30 & age <= 35 ~ "30-35",
    +         age > 35 & age <= 40 ~ "35-40",
    +         age > 40 & age <= 45 ~ "40-45",
    +         age > 45 & age <= 50 ~ "45-50",
    +         age > 50 & age <= 55 ~ "50-55",
    +         age > 55 & age <= 60 ~ "55-60",
    +         age > 60 & age <= 65 ~ "60-65",
    +         age > 65 & age <= 70 ~ "65-70",
    +         age > 70 & age <= 75 ~ "70-75",
    +         age > 75 & age <= 80 ~ "75-80",
    +         TRUE ~ "80+"
    +     )) %>%
  +     group_by(age_group) %>%
  +     summarise(avg_charges = mean(charges, na.rm = TRUE))

> filterd_data <- data
> remove(data)
> insurance <- read.csv("C:/Users/badhu/Downloads/insurance.csv")
