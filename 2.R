install.packages("tidyverse")
library(tidyverse)
library(lubridate)

today()
now()

ymd("2021-01-20")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")

as_date("2021-01-20 20:11:59")
as_date(now())


data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

dir.create ("destination_folder")
file.create ("new_text_file.txt") 
file.create ("new_word_file.docx") 
file.create ("new_csv_file.csv")

file.copy ("new_text_file.txt" , "destination_folder")

unlink ("some_.file.csv") #delete

matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)
