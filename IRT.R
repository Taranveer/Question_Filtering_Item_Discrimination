install.packages("dplyr")
install.packages("ltm")
library("dplyr")
library('ltm')

student_data = read.csv("astudentData.csv")
student_data$question_id = as.factor(student_data$question_id)
student_data$user_id = as.factor(student_data$user_id)
temp = reshape(student_data, idvar = "user_id", timevar = "question_id", direction = "wide")
tmatrix = data.matrix(temp)
rownames(tmatrix) = tmatrix[,1]
tmatrix = tmatrix[,-1]
ltmmod = ltm(tmatrix ~ z1)

ltm_coeffs = as.data.frame(coef(ltmmod,TRUE,TRUE))
ltm_coeffs = add_rownames(ltm_coeffs, "VALUE")
colnames(ltm_coeffs) = c("question_id","Diff","Discrm")
ltm_coeffs$question_id = gsub("correct.", "", ltm_coeffs$question_id)
write.csv(ltm_coeffs,"coeff2.csv",row.names = FALSE)