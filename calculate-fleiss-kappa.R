# compute fleiss kappa

"Extends Cohen's Kappa to more than 2 raters.

Interpretation

    It can be interpreted as expressing the extent to which the observed amount of agreement among raters exceeds what would be expected if all raters made their ratings completely randomly.

The raters can rate different items whereas for Cohen's they need to rate the exact same items

    Fleiss' kappa specifically allows that although there are a fixed number of raters (e.g., three), different items may be rated by different individuals
"

library("irr")

# load in your data
df <- read.csv('D:\\Projects\\UG-league-project\\data\\coded-transcripts\\team-[34].csv')

head(df)

# select the rater 1 and rater 2
data <- df[, 5:6]

# compute fleiss kappa
kappam.fleiss(data)


# good guide to follow : https://www.datanovia.com/en/lessons/intraclass-correlation-coefficient-in-r/
# core reference for ICC: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4913118/
# https://www.datanovia.com/en/lessons/fleiss-kappa-in-r-for-multiple-categorical-variables/
# https://notebook.community/amirziai/learning/statistics/Inter-rater%20agreement%20kappas