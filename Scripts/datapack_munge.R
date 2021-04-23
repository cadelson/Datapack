#CDI Datapack Munging

si_setup()

knitr::opts_chunk$set(echo = TRUE)

#install
install.packages("remotes")
remotes::install_github("USAID-OHA-SI/tameDP")
#load library
library(tameDP)

filepath <- "data/CotedIvoire_20210419_102651_V7.2_22Apr_2345PM_ok_akl_Ben_dc_akl_ok.xlsx"
df <- tame_dp(filepath)

#apply mech_name and primepartner name, funding agency and OU from DATIM
df <- get_names(df)

df %>% 
  filter(indicator=="AGYW_PREV",
         fundingagency=="USAID") %>%
  View()