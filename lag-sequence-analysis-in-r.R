# lag sequence analysis 
# opened 22/10/2021

install.packages("LagSequential")

library(LagSequential)

cleaned_coded_transcripts_team34 <- read.csv("D:\\Projects\\UG-league-project\\data\\coded-transcripts\\team-34-r-test.csv", header = TRUE)

cleaned_coded_transcripts_team16 <- read.csv("D:\\Projects\\UG-league-project\\data\\coded-transcripts\\team-16-r-test.csv", header = TRUE)

data_for_sequence_analysis_team16 <- cleaned_coded_transcripts_team16[, c(5)]


data_for_sequence_analysis_team16


sequential_lag_1 <- sequential(data_for_sequence_analysis_team16, lag = 1, permtest = FALSE, nperms = 1000, tailed = 1)
sequential_lag_2 <- sequential(data_for_sequence_analysis_team16, lag = 2, permtest = FALSE, nperms = 1000, tailed = 1)


data_for_sequence_analysis_team34 <- cleaned_coded_transcripts_team34[, c(5)]
sequential_lag_1 <- sequential(data_for_sequence_analysis_team34, lag = 1, permtest = FALSE, nperms = 1000, tailed = 1)
sequential_lag_2 <- sequential(data_for_sequence_analysis_team34, lag = 2, permtest = FALSE, nperms = 1000, tailed = 1)