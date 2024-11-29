library(tidyverse)

baby <- read_csv("公辦民營托嬰中心.csv")

glimpse(baby)

baby <- baby |>
  mutate(
    district=str_sub(地址,4,6),
    remaining_address = str_sub(地址,7)
  ) 

baby <- baby |>
  mutate(
    subdivision1 = str_extract(remaining_address,
                               "[\u4e00-\u9fff]{2,3}里"),
    remaining_address = str_remove(remaining_address,
                                   "[\u4e00-\u9fff]{2,3}里")
  )

baby <- baby |>
  mutate(
    subdivision2 = str_extract(remaining_address,
                               ".{2,3}鄰"),
    remaining_address = str_remove(remaining_address,
                                   ".{2,3}鄰")
  )

baby <- baby |>
  mutate(
    road = str_extract(remaining_address,
                       "[\u4e00-\u9fff]{2,3}路"),
    remaining_address = str_remove(remaining_address,
                                   "[\u4e00-\u9fff]{2,3}路")
  )

## teset
