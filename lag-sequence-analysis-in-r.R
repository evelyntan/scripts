# lag sequence analysis 
# opened 22/10/2021

install.packages("LagSequential")
install.packages("tidyverse")

library(LagSequential)
library(readxl)

transcript <- read_excel("D:\\Projects\\UG-league-project\\data\\coded-transcripts\\recoded-transcripts\\team-6.xlsx")

df <- data.frame(transcript)

data <- df[, c(9)]

data


analysis <- sequential(data, lag = 1, permtest = FALSE, nperms = 1000, tailed = 1)
#sequential_lag_2 <- sequential(data_for_sequence_analysis_team6, lag = 2, permtest = FALSE, nperms = 1000, tailed = 1)


#data_for_sequence_analysis_team34 <- cleaned_coded_transcripts_team34[, c(5)]
#sequential_lag_1 <- sequential(data_for_sequence_analysis_team34, lag = 1, permtest = FALSE, nperms = 1000, tailed = 1)
#sequential_lag_2 <- sequential(data_for_sequence_analysis_team34, lag = 2, permtest = FALSE, nperms = 1000, tailed = 1)