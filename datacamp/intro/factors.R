#Factors
survey.vector <- c("M","F","F","M","M")
factor.survey.vector <- factor( survey.vector )
factor.survey.vector #Print to console

#assign levels in alphabetical order
levels(factor.survey.vector) <- c("Female", "Male")

speed.vector <- c("Fast","Slow","Slow","Fast","Ultra-fast") 
factor.speed.vector = factor(speed.vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

factor.speed.vector

summary(factor.speed.vector) # R prints automagically in the right order

factor.speed.vector[2] > factor.speed.vector[5]

