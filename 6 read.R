install.packages("tidyverse")
library(ggplot2)
data("diamonds")
view(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)

library(tidyverse)
mutate(diamonds, carat_2=carat*100)

#Tibble
as_tibble(diamonds)

data() #All datasets

readr_example()
readr_example("mtcars.csv")
read_csv(readr_example("mtcars.csv"))

library(readxl)
readxl_example()
read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")


install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
library(dplyr)
install.packages("palmerpenguins")
library(palmerpenguins)

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>% 
  select(species)

penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new=island)

rename_with(penguins, toupper)
rename_with(penguins, tolower)

clean_names(penguins)
