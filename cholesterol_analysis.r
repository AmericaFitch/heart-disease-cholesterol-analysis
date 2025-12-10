# Load dataset
df <- Cardiovascular_Disease_Dataset

# Summary of data
summary(df)

# Boxplot
boxplot(df$serumcholestrol ~ df$target,
        xlab = "Heart Disease (0 = No, 1 = Yes)",
        ylab = "Serum Cholesterol (mg/dL)",
        main = "Cholesterol by Heart Disease Status")

# Group means
tapply(df$serumcholestrol, df$target, mean, na.rm = TRUE)

# Group standard deviations
tapply(df$serumcholestrol, df$target, sd, na.rm = TRUE)

# Group counts
table(df$target)

# Inferential test
t.test(df$serumcholestrol ~ df$target,
       alternative = "two.sided",
       var.equal = FALSE)