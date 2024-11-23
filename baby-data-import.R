library(tidyverse)

baby <- read_csv("公辦民營托嬰中心.csv")

glimpse(baby)

baby <- baby |>
  mutate(
    district=str_sub(地址,4,6)
  )
