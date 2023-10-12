library(tidyverse)
penguins %>% arrange(bill_length_mm) #ascending order
penguins %>% arrange(-bill_length_mm) #descending order
penguins2 <- penguins %>% arrange(-bill_length_mm) # saving data to new dataframe
view(penguins2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm=mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm=max(bill_length_mm))

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl=max(bill_length_mm), 
                                                                   mean_bl=mean(bill_length_mm))

penguins %>% filter(species=="Adelie")


id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
print(employee)

separate(employee, name, into = c('first_name','last_name'), sep = ' ')

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

unite(employee, 'name', first_name, last_name, sep = ' ')

view(penguins)
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000)

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)