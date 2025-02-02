# compute fleiss kappa

"Extends Cohen's Kappa to more than 2 raters.

Interpretation

    It can be interpreted as expressing the extent to which the observed amount of agreement among raters exceeds what would be expected if all raters made their ratings completely randomly.

The raters can rate different items whereas for Cohen's they need to rate the exact same items

    Fleiss' kappa specifically allows that although there are a fixed number of raters (e.g., three), different items may be rated by different individuals
"

install.packages("readxl")

library("irr")

library(readxl)

df_xlsx <- read_excel('D:\\Projects\\UG-league-project\\data\\coded-transcripts\\team-[6].xlsx')

# load in your data
#df <- read.csv('D:\\Projects\\UG-league-project\\data\\coded-transcripts\\team-[32].csv')

head(df_xlsx)

# select the rater 1 and rater 2
data_code_1 <- df_xlsx[, 5:6]

data_code_2 <- df_xlsx[, 7:8]

# compute fleiss kappa
kappam.fleiss(data_code_1)
kappam.fleiss(data_code_2)

# good guide to follow : https://www.datanovia.com/en/lessons/intraclass-correlation-coefficient-in-r/
# core reference for ICC: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4913118/
# https://www.datanovia.com/en/lessons/fleiss-kappa-in-r-for-multiple-categorical-variables/
# https://notebook.community/amirziai/learning/statistics/Inter-rater%20agreement%20kappas