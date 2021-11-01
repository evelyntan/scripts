install.packages("ltm")
library(ltm)

# calculate cronbach's alpha for internal reliability
cohesion_scores_raw <- read.csv("D:\\Projects\\UG-league-project\\data\\post-test-cohesion-scores-raw.csv", header = TRUE)



cohesion_task <- data.frame(TASK1 = cohesion_scores_raw$ï..TASK1, TASK2 = cohesion_scores_raw$TASK2, TASK3 = cohesion_scores_raw$TASK3)

cohesion_social <- data.frame(cohesion_scores_raw$SOC1, cohesion_scores_raw$SOC2, cohesion_scores_raw$SOC3)

# https://www.statology.org/cronbachs-alpha-in-r/ 
alpha_task_cohesion <- cronbach.alpha(cohesion_task, standardized = FALSE, CI = FALSE, 
               probs = c(0.025, 0.975), B = 1000, na.rm = FALSE)

alpha_social_cohesion <- cronbach.alpha(cohesion_social, standardized = FALSE, CI = FALSE, 
                                      probs = c(0.025, 0.975), B = 1000, na.rm = FALSE)

install.packages("multilevel")
library(multilevel)
# calculate interrater agreement using rwg
cohesion_scores_with_team_no <- read.csv("D:\\Projects\\UG-league-project\\data\\post-test-cohesion-scores-raw-with-teamno.csv", header = TRUE)
satisfaction_scores_with_team_no <- read.csv("D:\\Projects\\UG-league-project\\data\\post-test-satisfaction-scores-raw-with-teamno.csv", header = TRUE)

RWG_out_cohesion <- rwg(cohesion_scores_with_team_no$Mean_cohesion, grpid = cohesion_scores_with_team_no$Team, ranvar=((7^2-1)/12))

RWG_out_satisfaction <- rwg(satisfaction_scores_with_team_no$Mean_satisfaction, grpid = satisfaction_scores_with_team_no$Team, ranvar=((7^2-1)/12))

summary(RWG_out_cohesion)
summary(RWG_out_satisfaction)

# findings show that: 

# the scale has good internal consistency (i.e. it is reliable)
# Items: 6
# Sample units: 181
# alpha: 0.898

# that cohesion can be aggregated at the team level because of high interrater reliability 
#     grpid                rwg             gsize      
# Length:49          Min.   :0.0000   Min.   :3.000  
# Class :character   1st Qu.:0.7549   1st Qu.:3.000  
# Mode  :character   Median :0.8824   Median :3.000  
#                    Mean   :0.8040   Mean   :3.694  
#                   3rd Qu.:0.9491   3rd Qu.:5.000  
#                   Max.   :0.9952   Max.   :5.000 


library(psych)
alpha(cohesion_scores_raw)
alpha(cohesion_social)
alpha(cohesion_task)