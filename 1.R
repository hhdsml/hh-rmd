rm(list = ls())
library(dplyr)
library(ggplot2)

df_raw <- read.csv("../data/journals.csv")

getwd()

df_raw <- read.csv("./data/journals.csv")

df_raw %>% 
  mutate(subfield = as.factor(subfield), english = as.factor(english),
         age = 2022 - since, since = NULL) ->df 
df %>% 
  group_by(origin) %>% 
  count() %>% 
  arrange(-n) %>% 
  mutate(origin = as.factor(origin))-> df_group 
df_group %>% 
  ggplot(aes(x = origin, y = n)) +
  geom_bar(stat = "identity")+
  labs(x = "", y = "Number of Journals")

lm1 <- lm(h5_index ~ issues, df)
summary(lm1)


library(rvest)

library(stringr)

body > div.main > div:nth-child(2) > div.col-12.col-md-10 > div.container.mr-5 > div


url <- "https://englishtest.es/eng/?option=com_quiz&view=play&id=100099&Itemid=355"

dt:nth-child(25) strong , dt:nth-child(28) strong , dt:nth-child(16) .question , dt:nth-child(10) .question


url %>% 
  read_html() %>% 
  html_elements('#print , dt:nth-child(16) .question , dt:nth-child(10) .question') %>% 
  html_text2(preserve_nbsp = TRUE) ->text1

url %>% 
  read_html() %>% 
  html_elements('dt:nth-child(25) strong , dt:nth-child(28) strong , dt:nth-child(16) .question , dt:nth-child(10) .questio') %>% 
  html_text2() ->text2

url %>% 
  read_html() %>% 
  html_elements(xpath="strong") %>% 
  html_text2() ->text3



text1 %>% 
  str_split(pattern = "\\n", simplify = TRUE) %>% 
  matrix(ncol =1) %>% 
  as.data.frame() ->df_text 

df_text[-c(1:3),] %>% 
  str_replace_all(pattern = "[0-9]","") %>% 
  str_remove_all(".")-> new_df
  

new_df

data1 <- read.table("./text.txt")

getwd()
