df <- tibble( 
  Chr = as.character(1:10), 
  Num = c(1:5, 6:10), 
  Lgl = c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE), 
  Date1 = as.character(seq.Date(from = as.Date("2021-10-01"),  
                                by = "day",  
                                length.out = 10)), 
  Date2 = format(seq.Date(from = as.Date("2021-01-01"),  
                          by = "day",  
                          length.out = 10), "%b %d, %Y"), 
  DateTime1 = as.character(seq.POSIXt(from = as.POSIXct("2021-10-01 12:00:00"),  
                                      by = "day",  
                                      length.out = 10)), 
  DateTime2 = format(seq.POSIXt(from = as.POSIXct("2021-01-01 12:00:00"),  
                                by = "day",  
                                length.out = 10), "%b %d, %Y %H:%M:%S"), 
  Factor = rep(c("cat", "dog", "bird"), length.out = 10), 
  OrderFactor = rep(c("less than 10", "more than 10"), length.out = 10) 
) 

glimpse(df) 