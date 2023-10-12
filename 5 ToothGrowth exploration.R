data(ToothGrowth)
view(ToothGrowth)
install.packages("dplyr")
library(dplyr)

filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

arrange(filtered_tg, len)

arrange(filter(ToothGrowth, dose==0.5), len)

# pipe
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T),.groups = "drop") 