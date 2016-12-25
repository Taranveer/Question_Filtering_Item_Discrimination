ltm_coeff = read.csv("coeff.csv")
ltm_coeff$index = 1:391
getindex = function(item){
  ltm_coeff[ltm_coeff$question_id %in% item,]$index
}
plot_IIC = function(file,name){
question = read.csv(file,header=FALSE)
que = as.vector(question$V1)
que = as.numeric(que[-1])
sel=getindex(que)
plot(ltmmod, type = "IIC", main = name, items = sel, legend = F,labels = NULL, lwd = 2, cx = "topright",annot = F)
}

plot_IIC("question_kept_1.csv","IIC - Question Kept - Method 1 ")
plot_IIC("question_eliminated_1.csv","IIC - Question Eliminated - Method 1 ")
plot_IIC("question_kept_2.csv","IIC - Question Kept - Method 2 ")
plot_IIC("question_eliminated_2.csv","IIC - Question Eliminated - Method 2 ")