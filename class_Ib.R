df <- read.csv("G:/AI_Omics_Internship_2025/Module_1/raw_data/patient_info.csv")

#-------Inspect Structure---------
str(df)
summary(df)

#--------Fix Data Types-----------

df$patient_id <- as.character(df$patient_id)
df$age <- as.numeric(df$age)
df$gender <- as.factor(df$gender)
df$diagnosis <- as.factor(df$diagnosis)
df$smoker <- as.factor(df$smoker)

#----------Create Binary Smoking Column----------

df$smoker_binary <- ifelse(df$smoker == "Yes", 1, 0)

#------------Save Cleaned Data-------------------

write.csv(df, "G:/AI_Omics_Internship_2025/Module_1/clean_data/patient_info_clean.csv", row.names = FALSE)
