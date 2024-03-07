library(tidyquant)
ex_rate <- tq_get("DEXCHUS", get = "economic.data", from = "2019-07-01")

library(ggplot2)
library(ggthemes)
ggplot(ex_rate, aes(x = date, y = price)) +
  geom_line(color = "#0074D9", size = 1) +
  labs(y = "RMB/USD", x = "date", title = "RMB/USD Exchange Rate",
       subtitle = "Creator: @NiHao20010424", caption =  "Source: FRED") +
   theme_economist()
 