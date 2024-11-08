survey <- read_csv("https://raw.githubusercontent.com/tpemartin/113-1-R/refs/heads/main/Lecture-notes/ee-survey.csv")

glimpse(survey)

library(lubridate)

# parse date time
survey <- survey %>%
  mutate(
    `Timestamp` = mdy_hms(`Timestamp`, tz="Asia/Taipei")
  )

glimpse(survey)
