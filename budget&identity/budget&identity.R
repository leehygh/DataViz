library(readxl)
budget <- read_xlsx("C:/Users/26956/Desktop/dataviz/budget.xlsx")
identity <- read_xls("C:/Users/26956/Desktop/dataviz/identity.xls")

library(dplyr)
library(tidyr)
data <- left_join(budget, identity, by = "school")
学校定位 <- replace_na(data$identity, "双非")
data1 <- data.frame(data$school, data$budget, 学校定位,
                    data$location)

library(ggplot2)
library(ggthemes)
ggplot(data1, aes(x = 学校定位, y = data.budget)) +
  geom_point(color = "red", size = 3) +
  labs(x = "学校定位", y = "2021年学校预算",
       title = "学校定位与预算", subtitle = "Created by Hao") +
  theme_few()

ggplot(data1, aes(x = data.location, y = data.budget,
                  fill = 学校定位, shape = 学校定位, color = 学校定位)) +
  geom_point(size = 4, alpha = 0.7) +
  labs(x = "学校位置", y = "2021年学校预算",
       title = "学校定位与预算", subtitle = "Created by Hao") +
  theme_few() +
  theme(axis.text.x = element_text(angle = 50, 
                                   vjust = 1, hjust = 1, size = 6)) 
  
  
  

  
